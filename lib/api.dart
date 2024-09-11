import 'dart:convert';

import 'package:http/http.dart';
import 'package:http/http.dart' as http;

import 'package:ola_sdk_test/const.dart';
import 'package:ola_sdk_test/models/auto_complete_response_model.dart';

class Api {
  static String baseUrl = "https://api.olamaps.io/places/v1/";

  Api._();
  static Future<List<AutoCompleteResponseModel>> autoComplete(String query) {
    return http
        .get(
      Uri.parse('${baseUrl}autocomplete?input=$query&api_key=$kApiKey'),
    )
        .then((response) {
      List<AutoCompleteResponseModel> addresses = [];

      if (response.statusCode == 200) {
        var json = jsonDecode(response.body);
        for (var item in json['predictions']) {
          if (item is Map) {
            Map<String, dynamic> addressJson = {};
            addressJson['description'] = item['description'];
            addressJson['place_id'] = item['place_id'];
            if (item.containsKey("geometry")) {
              if (item['geometry'] is Map &&
                  (item['geometry'] as Map).containsKey(
                    "location",
                  )) {
                addressJson['lat'] = item['geometry']['location']['lat'];
                addressJson['lng'] = item['geometry']['location']['lng'];
              }
            }
            addresses.add(AutoCompleteResponseModel.fromJson(addressJson));
          }
        }
      }
      return addresses;
    });
  }
}
