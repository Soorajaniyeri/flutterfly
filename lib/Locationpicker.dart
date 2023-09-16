import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:location/location.dart';

class LocationPicker extends StatefulWidget {
  const LocationPicker({super.key});

  @override
  State<LocationPicker> createState() => _LocationPickerState();
}

class _LocationPickerState extends State<LocationPicker> {

  getLocation()async{

    Location location = Location();
 LocationData myLocation =  await location.getLocation();

    if(myLocation!=null){

      print(myLocation.latitude);
      print(myLocation.longitude);

    }

  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text("Location Picker"),

      ),
      body: Column(
        children: [

          ElevatedButton(onPressed: (){

            getLocation();
          }, child: Text("click"))
        ],
      ),
    );
  }
}
