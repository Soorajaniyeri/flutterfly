import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:location/location.dart';

class LocationTask extends StatefulWidget {
  const LocationTask({super.key});

  @override
  State<LocationTask> createState() => _LocationTaskState();
}

class _LocationTaskState extends State<LocationTask> {
  String? currentLongitude;
  String? currentLatitude;

  locationDetails() async {
    Location location = Location();

    setState(() {
      currentLongitude = "getting data";
      currentLatitude = "getting data";
    });
    LocationData myLoc = await location.getLocation();

    if (myLoc.longitude != null && myLoc.longitude != null) {
      setState(() {
        currentLatitude = myLoc.latitude.toString();
        currentLongitude = myLoc.longitude.toString();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text("LocationTask"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
                onPressed: () {
                  locationDetails();
                },
                child: Text("Show Details")),
          ),
          currentLongitude == null
              ? SizedBox()
              : Text(
                  "Longitude :  $currentLongitude",
                  style:
                      TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
                ),
          currentLatitude == null
              ? SizedBox()
              : Text(
                  "Latitude : $currentLatitude",
                  style: TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.bold),
                )
        ],
      ),
    );
  }
}
