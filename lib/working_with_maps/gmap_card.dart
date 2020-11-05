import 'package:flutter/material.dart';
import 'package:random_color/random_color.dart';
import 'package:studentlist/working_with_maps/client_side.dart';
import 'package:studentlist/working_with_maps/url_lancher.dart';
import 'package:studentlist/working_with_maps/user_generated.dart';

RandomColor _randomColor = RandomColor();

class GmapCard extends StatefulWidget {
  CityLocations s;

  @override
  _GmapCardState createState() => _GmapCardState();

  GmapCard(this.s);
}

class _GmapCardState extends State<GmapCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: _randomColor.randomColor(),
      width: 100,
      //height: ,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Text("distance_Text : ${widget.s.distance_Text}"),
              SizedBox(
                width: 20,
              ),
              Text("distance_Value : ${widget.s.distance_Value}"),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Text("duration_Text : ${widget.s.duration_Text}"),
              SizedBox(
                width: 20,
              ),
              Text("duration_Value : ${widget.s.duration_Value}"),
              SizedBox(
                width: 20,
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                  "start location lat: ${widget.s.startLocation_Lat}       lnt: : ${widget.s.startLocation_Lng}   "),
              IconButton(
                icon: Icon(Icons.add_location),
                color: Colors.black,
                onPressed: () {
                  logger.i("google map icon is pressed");
                  callMap(widget.s.startLocation_Lat, widget.s.startLocation_Lng);
                }
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                  "end location lat: ${widget.s.endLocation_Lat}         lnt: : ${widget.s.endLocation_Lng}"),
              IconButton(
                  icon: Icon(Icons.add_location),
                  color: Colors.black,
                  onPressed: () => callMap(
                      widget.s.endLocation_Lat, widget.s.endLocation_Lng)),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Text("traval_Mode : ${widget.s.distance_Text}"),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }

  callMap(double lat, double lnt) async {
    logger.i("called callmap funtion");
    await $googleMaps
        .calMapLocation("https://www.google.com/maps/@$lat,$lnt,15z");
  }
}
