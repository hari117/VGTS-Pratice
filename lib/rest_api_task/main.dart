import 'package:flutter/material.dart';
import 'package:studentlist/rest_api_task/screens/card_details_page.dart';
import 'package:studentlist/rest_api_task/screens/home_page.dart';

void main() {
  runApp(RestApiTask());
}

class RestApiTask extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.amber,
        body:HomePage(),
      ),
    );
  }
}
