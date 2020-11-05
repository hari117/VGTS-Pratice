import 'package:studentlist/working_with_maps/client_side.dart';
import 'package:url_launcher/url_launcher.dart';

class GoogleMaps {

  calMapLocation(String gMapUrl) async {
    logger.i("Entered callmap funtion");
    if (await canLaunch(gMapUrl)) {
      await launch(gMapUrl);
    } else {
      throw 'Could not launch $gMapUrl';
    }
  }
}

final $googleMaps = GoogleMaps();
