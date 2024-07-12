import 'package:firebase_database/firebase_database.dart';
import 'package:geolocator/geolocator.dart';
import 'package:uom_travel_buddy/user/assistants/request_assistant.dart';
import 'package:uom_travel_buddy/user/global/global.dart';
import 'package:uom_travel_buddy/user/global/map_key.dart';
import 'package:uom_travel_buddy/user/infoHandler/app_info.dart';
import 'package:uom_travel_buddy/user/models/directions.dart';
import 'package:uom_travel_buddy/user/models/user_models.dart';
import 'package:provider/provider.dart';

class AssistantMethods {
  static Future<String> searchAddressForGeographicCoOrdinates(
      Position postion, context) async {
    String apiurl =
        "https://maps.googleapis.com/maps/api/geocode/json?latlng=${postion.latitude},${postion.longitude}&key=$mapKey";
    String humanReadableAddress = "";
    var requestResponse = await RequestAssistant.receiveRequest(apiurl);
    if (requestResponse != "Error occure , No response , faild") {
      humanReadableAddress = requestResponse["results"][0]["formatted_address"];
      Directions userPickUpAddress = Directions();
      userPickUpAddress.locationLatitude = postion.latitude;
      userPickUpAddress.locationLongitude = postion.longitude;
      userPickUpAddress.locationName = humanReadableAddress;
      Provider.of<AppInfo>(context, listen: false)
          .updatePickUpLocationAddress(userPickUpAddress);
    }
    return humanReadableAddress;
  }

  static void readCurrentOnlineUserInfo() async {
    currentFirebaseUser = fAuth.currentUser;
    DatabaseReference userRef = FirebaseDatabase.instance
        .ref()
        .child("Users")
        .child(currentFirebaseUser!.uid);
    userRef.once().then((snap) {
      if (snap.snapshot.value != null) {
        userModelCurrentInfo = UserModel.fromSnapshot(snap.snapshot);
      }
    });
  }
}
