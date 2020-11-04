import 'package:flutter/material.dart';
import 'package:studentlist/rest_api_task/models/user_genarated_model.dart';
import 'package:studentlist/rest_api_task/widgets/text_widget.dart';

class UserDetailsPage extends StatelessWidget {
  UserExtractedData user;

  UserDetailsPage(this.user);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextWidget("${user.id}"),
            SizedBox(
              height: 30,
            ),
            Container(
              color: Colors.white,
              height: 100,
              width: MediaQuery.of(context).size.width - 100,
              //padding: EdgeInsets.symmetric(horizontal: 20),
              child: TextWidget("${user.body}"),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              color: Colors.white,
              height: 100,
              width: MediaQuery.of(context).size.width - 100,
              //padding: EdgeInsets.symmetric(horizontal: 20),
              child: TextWidget("${user.title}"),
            ),
          ],
        ),
      ),
    );
  }
}
