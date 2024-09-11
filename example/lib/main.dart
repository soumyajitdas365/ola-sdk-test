import 'package:flutter/material.dart';
import 'package:ola_sdk_test/ola_sdk_test.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    // OlaSdkTest sdk = OlaSdkTest(
    //   apiKey: 'lY1kkpDDPVrIieZru060G5TufluaNQDLkDA0ZeCK',
    // );
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: SearchField(
            apiKey: 'lY1kkpDDPVrIieZru060G5TufluaNQDLkDA0ZeCK',
          ),
        ),
      ),
    );
  }
}
