import 'dart:convert';
import 'package:logger/logger.dart';

import 'package:http/http.dart' as req;
import 'package:studentlist/working_with_maps/bot_generated.dart';
import 'package:studentlist/working_with_maps/user_generated.dart';
var logger = Logger();
class ClientSide {
  final url =
      "https://maps.google.com/maps/api/directions/json?origin=chennai&destination=madurai&sensor=false&key=AIzaSyD3mXQ_4M_JqXnLWklQFIDAO5WiYmChRtg";

 Future getLocDetails() async {

    try {
      req.Response response = await req.get(url);
      Map<String, dynamic> map = jsonDecode(response.body);
     GoogleMaps googleMaps = GoogleMaps.fromJson(map);
     List<CityLocations> cityLocations=CityLocations.extractData(googleMaps);
      return cityLocations;
    }catch(error){
      logger.e(error);
     }

  }
}

final $clinetside = ClientSide();
