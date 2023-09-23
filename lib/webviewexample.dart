import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:location/location.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebviewExample extends StatefulWidget {
  const WebviewExample({super.key});

  @override
  State<WebviewExample> createState() => _WebviewExampleState();
}

class _WebviewExampleState extends State<WebviewExample> {
  WebViewController? controller;
  double longi = 0.0;
  double lati = 0.0;

  getLocation() async {
    Location location = Location();
    LocationData store = await location.getLocation();

    setState(() {
      longi = store.longitude!;
      lati = store.latitude!;

      controller = WebViewController()
        ..setJavaScriptMode(JavaScriptMode.unrestricted)
        ..loadRequest(Uri.parse(
            'https://www.google.com/maps/@${lati},${longi},17z?entry=ttu'));
    });
  }

  @override
  void initState() {
    getLocation();

    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: controller == null
          ? Center(
              child: CircularProgressIndicator(),
            )
          : SafeArea(child: WebViewWidget(controller: controller!)),
    );
  }
}
