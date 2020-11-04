
import 'package:studentlist/rest_api_task/models/automatic_genarated_model.dart';

class UserExtractedData {


  int id;
  String title;
  String body;


  static List<UserExtractedData> fromResults(List<Users> listofData) {
    List<UserExtractedData> users=[];

    print("entered the users fromResults funtion");

     for(Users singleUser in listofData)
      {
        UserExtractedData userExtractedData=UserExtractedData();

        userExtractedData.id=singleUser.id;
        //  print(" * * ${userExtractedData.id} * *");
         userExtractedData.body=singleUser.body;
        //  print(" * * ${userExtractedData.body} * *");
        userExtractedData.title=singleUser.title;
      //  print(" * * ${userExtractedData.title} * *");
        users.add(userExtractedData);


      }

    return users;

}

}