import 'package:flutter/material.dart';
import 'package:studentlist/working_with_maps/bot_generated.dart';
import 'package:studentlist/working_with_maps/client_side.dart';

class CityLocations {
  String distance_Text;
  int distance_Value;

  String duration_Text;
  int duration_Value;

  double endLocation_Lat;
  double endLocation_Lng;

  double startLocation_Lat;
  double startLocation_Lng;

  String traval_Mode;

  static List<CityLocations> extractData(GoogleMaps map) {
    List<CityLocations> listofObjects = [];
    for (RouteClass g in map.routes) {
      for (Leg l in g.legs) {
        for (StepClass s in l.steps) {
          CityLocations cityLocations = CityLocations();

          cityLocations.distance_Text = s.distance.text;
          cityLocations.distance_Value = s.distance.value;

          cityLocations.duration_Text = s.duration.text;
          cityLocations.duration_Value = s.duration.value;

          cityLocations.endLocation_Lat = s.endLocation.lat;
          cityLocations.endLocation_Lng = s.endLocation.lng;

          cityLocations.startLocation_Lat = s.startLocation.lat;
          cityLocations.startLocation_Lng = s.startLocation.lng;

          cityLocations.traval_Mode = s.travelMode.toString();

          listofObjects.add(cityLocations);
        }
      }
    }

    return listofObjects;
  }
}
