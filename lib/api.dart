import 'package:http/http.dart';
import 'package:http/http.dart' as http;

import 'package:ola_sdk_test/const.dart';

class Api {
  static String baseUrl = "https://api.olamaps.io/places/v1/";

  Api._();
  static Future<Response> autoComplete(String query) {
    return http.get(
      Uri.parse('${baseUrl}autocomplete?input=$query&api_key=$kApiKey'),
    );
  }
}
