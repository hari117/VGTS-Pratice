import 'package:flutter/cupertino.dart';
import 'package:states_rebuilder/states_rebuilder.dart';
import 'package:studentlist/rest_api_task/cleint_side/client_request.dart';
import 'package:studentlist/rest_api_task/models/user_genarated_model.dart';

class GlobalState extends StatesRebuilder {
  static GlobalState instance = GlobalState();

  bool isLoading = true;
  bool isError = false;
  List<UserExtractedData> listOfData=[];

  callRestApi() async {
    print("entered callRestApi funtion");
    $clientrequest.getResults().then((value) {
      listOfData.addAll(value);
      isLoading=false;
      isError=false;
      rebuildStates();

    },
    );

  }



























}
