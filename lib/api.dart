import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:ola_sdk_test/models/auto_complete_response_model.dart';

String kApiKey = "";

class Api {
  static String baseUrl = "https://api.olamaps.io/places/v1/";

  Api._();
  static Future<List<AutoCompleteResponseModel>> autoComplete(String query,
      {int? radius, bool? strictbounds, String? location}) {
    List<String> queryList = [
      "${baseUrl}autocomplete?input=$query",
      "api_key=$kApiKey",
      if (radius != null) "radius=$radius",
      if (strictbounds != null) "strictbounds=$strictbounds",
      if (location != null) "location=$location",
    ];
    return http
        .get(
      Uri.parse(queryList.join("&")),
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

  static Future<List<AutoCompleteResponseModel>> searchText(String query,
      {int? radius, String? location, String? types, int? size}) {
    List<String> queryList = [
      "${baseUrl}autocomplete?input=$query",
      "api_key=$kApiKey",
      if (radius != null) "radius=$radius",
      if (location != null) "location=$location",
      if (types != null) "types=$types",
      if (size != null) "size=$size"
    ];
    return http
        .get(
      Uri.parse(queryList.join("&")),
    )
        .then((response) {
      List<AutoCompleteResponseModel> addresses = [];

      if (response.statusCode == 200) {
        var json = jsonDecode(response.body);
        for (var item in json['predictions']) {
          if (item is Map) {
            Map<String, dynamic> addressJson = {};
            addressJson['formatted_address'] = item['formatted_address'];
            addressJson['place_id'] = item['place_id'];
            addressJson['name'] = item['name'];
            addressJson['types'] = item['types'];
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
