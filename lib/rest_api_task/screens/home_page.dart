import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';
import 'package:studentlist/rest_api_task/models/user_genarated_model.dart';
import 'package:studentlist/rest_api_task/state_management/global_state_management.dart';
import 'package:studentlist/rest_api_task/widgets/card_Widget.dart';
import 'package:studentlist/rest_api_task/widgets/error_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  GlobalState gs=GlobalState.instance;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    gs.callRestApi();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.blueGrey,

      body: StateBuilder(
        observe: () => gs,
        builder: (context,ib){

          if(gs.isLoading==true && gs.isError==false)
            {
              return LoadingWidget();
            }
          else if(gs.isLoading==false && gs.isError==false)
          {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ListView.builder(itemCount: gs.listOfData.length,itemBuilder: (context,index){

                UserExtractedData user=gs.listOfData[index];
                return UserCard(user);
              },
              ),
            );

              }
          else
            {
              return null;
            }


        },
      ),



    );
  }
}
