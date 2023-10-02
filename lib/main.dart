import 'package:flutter/material.dart';
import 'package:flutterfly/page1.dart';
import 'package:flutterfly/pending.dart';
import 'package:flutterfly/popupmenu.dart';
import 'package:flutterfly/popupmenu2.dart';
import 'package:flutterfly/postApi.dart';
import 'package:flutterfly/postdataapiexample.dart';
import 'package:flutterfly/printdays.dart';
import 'package:flutterfly/printmonth.dart';
import 'package:flutterfly/productuiApi.dart';
import 'package:flutterfly/profileicon.dart';
import 'package:flutterfly/radioexample.dart';
import 'package:flutterfly/rawalignment.dart';
import 'package:flutterfly/scaffoldmesNotification.dart';
import 'package:flutterfly/sharedpref.dart';
import 'package:flutterfly/sharedpreftask.dart';
import 'package:flutterfly/sharedpreftaskwithnavigator.dart';
import 'package:flutterfly/sizedbox.dart';
import 'package:flutterfly/stack.dart';
import 'package:flutterfly/stack2.dart';
import 'package:flutterfly/studyclass2ui.dart';
import 'package:flutterfly/studyclassui.dart';
import 'package:flutterfly/sumdisplay.dart';
import 'package:flutterfly/switch.dart';
import 'package:flutterfly/tabbar.dart';
import 'package:flutterfly/testing.dart';
import 'package:flutterfly/study.dart';
import 'package:flutterfly/textdecoration.dart';
import 'package:flutterfly/textfieldcolumn.dart';
import 'package:flutterfly/textfielddecoration.dart';
import 'package:flutterfly/textfieldexample.dart';
import 'package:flutterfly/alertboxtask.dart';
import 'package:flutterfly/timedatepickerwithalert.dart';
import 'package:flutterfly/todoapi.dart';
import 'package:flutterfly/tshape.dart';
import 'package:flutterfly/tshape2.dart';
import 'package:flutterfly/userapimodelclass.dart';
import 'package:flutterfly/userdetails.dart';
import 'package:flutterfly/webviewexample.dart';
import 'package:flutterfly/whatsappui.dart';
import 'package:flutterfly/whatsappui2.dart';
import 'package:flutterfly/windowslogo.dart';
import 'package:flutterfly/windowslogo2.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'Bottomnavigation.dart';
import 'Catagories.dart';
import 'Controller.dart';
import 'FutureBuilderExample.dart';
import 'Mapflutter2.dart';
import 'Maptask3.dart';
import 'RandomDogApi.dart';
import 'api3.dart';
import 'apiGet.dart';
import 'apiintegration2.dart';
import 'apitask.dart';
import 'apitaskbig.dart';
import 'gallery.dart';
import 'Listdataentry.dart';
import 'LocationTask.dart';
import 'Locationpicker.dart';
import 'Navigator.dart';
import 'Textfieldvaluesum.dart';
import 'advanceddetails.dart';
import 'alertbox.dart';
import 'appbardesign.dart';
import 'assetimage.dart';
import 'buttons.dart';
import 'checkboxtext.dart';
import 'columnalignment.dart';
import 'containerdecoration.dart';
import 'currencyconverter.dart';
import 'datepicker.dart';
import 'datepickertask.dart';
import 'detaildform.dart';
import 'displaytext.dart';
import 'drawer.dart';
import 'futuralabs.dart';
import 'geeksforgeeks.dart';
import 'gridviewbuilder.dart';
import 'gridviewtask.dart';
import 'gridviewwxample.dart';
import 'imageinternet.dart';
import 'imagepicker.dart';
import 'imagepickertask.dart';
import 'inkwellexample.dart';
import 'listtile.dart';
import 'listviewbuilder.dart';
import 'listviewexample.dart';
import 'logindesign.dart';
import 'look.dart';
import 'lshape.dart';
import 'mapflutter.dart';
import 'model/usertask11.dart';
import 'multiplicationcontroll.dart';
import 'myhome.dart';
import 'oneuserapinewmethod.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: FToastBuilder(),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: StudyClass2(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int value = 1;
  int _counter = 2;

  Color myclr = Colors.transparent;
  Color myclr2 = Colors.green;

  List<Color> mylist = [Colors.black, Colors.pink];

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter = _counter + 2;
      value = value + 1;
    });

    if (_counter % 2 == 0) {
      myclr = Colors.red;
    } else {
      myclr = Colors.transparent;
    }
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Colors.green,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(
          widget.title,
        ),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // const Text(
            //     "Welcome to FlutterFly"
            // ),

            // Text(" "),

            // Text("Click on the button to increse the count"),

            // Container(
            //   height: 100,
            //   width: 300,
            //   color: myclr,
            // ),

            // Container(
            //
            //   height: 30,
            //   width: 300,
            //   color: Colors.white,
            //
            // ),

            Text(
              '$value * 2 = $_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),

            // Container(
            //   height: 100,
            //   width: 300,
            //   color: myclr2,
            // ),

            // Text(
            //   '$_counter',
            //   style: Theme.of(context).textTheme.headlineMedium,
            // ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
