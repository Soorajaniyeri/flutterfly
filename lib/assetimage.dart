import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AssetExample extends StatefulWidget {
  const AssetExample({super.key});

  @override
  State<AssetExample> createState() => _AssetExampleState();
}

class _AssetExampleState extends State<AssetExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
      ),
      
      body: Container(
        
        height: 200,
        width: 200,
        child: Image(image: AssetImage("asset/medal.png")),
      ),
    );
  }
}
