library ola_sdk_text;

import 'package:flutter/widgets.dart';
import 'package:ola_sdk_test/const.dart';
import 'package:ola_sdk_test/overlay_widget.dart';

/// A Calculator.
class OlaSdkTest {
  final String apiKey;

  OlaSdkTest({
    required this.apiKey,
  }) {
    kApiKey = apiKey;
  }

  Widget autofillTextField() {
    return OLAMapPlaceAutoCompleteTextField(
      textEditingController: TextEditingController(),
    );
  }
}
