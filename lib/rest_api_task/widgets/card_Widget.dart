import 'package:flutter/material.dart';
import 'package:studentlist/rest_api_task/models/user_genarated_model.dart';
import 'package:studentlist/rest_api_task/screens/card_details_page.dart';
import 'package:studentlist/rest_api_task/state_management/global_state_management.dart';
import 'package:studentlist/rest_api_task/widgets/text_widget.dart';

class UserCard extends StatefulWidget {
  UserExtractedData oneUser;
  UserCard(this.oneUser);
  @override
  _UserCardState createState() => _UserCardState();


}

class _UserCardState extends State<UserCard> {
  GlobalState gs=GlobalState.instance;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()
      {
        print("user card is pressed to see full details of the user");


       Navigator.push(context, MaterialPageRoute(builder: (context) => UserDetailsPage(widget.oneUser)));

      },
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.symmetric(vertical: 15,),
        width: 100,
        height: 100,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
        ),
        child: TextWidget("${widget.oneUser.id}"),
      ),
    );
  }


}
