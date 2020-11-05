import 'dart:convert';

import 'package:http/http.dart' as req;
import 'package:studentlist/rest_api_task/models/automatic_genarated_model.dart';
import 'package:studentlist/rest_api_task/models/user_genarated_model.dart';


class ClientRequest {

  static final url="http://jsonplaceholder.typicode.com/posts";

  Future<List<UserExtractedData>>getResults() async {
    print("called get results funtion");
    req.Response response =await req.get(url);
    var data=response.body;
    // Map<String,dynamic>  map=jsonDecode(data);
    // print(map);
    // print(data.runtimeType);
    //  print(data);
     List<Users> u=usersFromJson(data);
     List<UserExtractedData> listOfUsersData=UserExtractedData.fromResults(u);
     return listOfUsersData;
  }

  }

final $clientrequest=ClientRequest();
