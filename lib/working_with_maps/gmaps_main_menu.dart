import 'package:flutter/material.dart';
import 'package:studentlist/working_with_maps/client_side.dart';
import 'package:studentlist/working_with_maps/gmap_card.dart';
import 'package:studentlist/working_with_maps/user_generated.dart';

void main() {
  // getDetails();
  runApp(GmapRestApi());
}

getDetails() async {
  await $clinetside.getLocDetails();
}

class GmapRestApi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: FutureBuilder(
          future: $clinetside.getLocDetails(),
          builder: (context, snapShot) {
            if (snapShot.hasData) {
              //CityLocations c=  snapShot.data[0];
              return ListView.builder(
                itemCount: snapShot.data.length,
                itemBuilder: (context, index) {
                  CityLocations c = snapShot.data[index];
                  return GmapCard(c);
                },
              );
            } else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      ),
    );
  }
}
