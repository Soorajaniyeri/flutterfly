import 'package:flutter/material.dart';

class StudyClass extends StatefulWidget {
  const StudyClass({super.key});

  @override
  State<StudyClass> createState() => _StudyClassState();
}

class _StudyClassState extends State<StudyClass> {
  horDesign(Color myClr, String label, String titleBig, String titleSmall,
      String imgPath) {
    return Container(
      margin: EdgeInsets.all(10),
      height: 200,
      width: 200,
      decoration: BoxDecoration(
          color: myClr, borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Stack(children: [
        Positioned(
          top: 10,
          left: 5,
          child: Container(
            height: 40,
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.lightBlue.shade300,
              borderRadius: BorderRadius.all(Radius.circular(30)),
            ),
            child: Center(
              child: Text(
                label,
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        Positioned(
            top: 80,
            left: 10,
            child: Text(
              titleBig,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            )),
        Positioned(
            top: 105,
            left: 10,
            child: Text(
              titleSmall,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            )),
        Positioned(
            right: 0,
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(imgPath))),
              height: 140,
              width: 150,
            ))
      ]),
    );
  }

  verDesign(Color myclr, String imagePath) {
    return SizedBox(
      // color: Colors.black,
      height: 100,
      child: Stack(children: [
        Positioned(
          top: 20,
          child: Container(
            margin: EdgeInsets.only(right: 20),
            height: 80,
            width: 300,
            decoration: BoxDecoration(
                color: Colors.indigo.shade200,
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 50,
                    ),
                    Text(
                      "Flutter Devoloper",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "8 Hours",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Positioned(
          left: 22,
          bottom: 30,
          child: Container(
            height: 70,
            width: 80,
            decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover, image: AssetImage(imagePath)),
              color: myclr,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
          ),
        ),
        Positioned(
          left: 283,
          top: 45,
          child: Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
                color: Colors.pink.shade300, shape: BoxShape.circle),
            child: Icon(
              Icons.arrow_right,
              color: Colors.white,
              size: 30,
            ),
          ),
        ),
      ]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.all(15),
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              "Online",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.white),
            ),
            Text(
              "Master Class",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.white),
            ),
            SizedBox(
              height: 300,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  horDesign(Colors.lightBlue, "Recommended", "Ui/Ux Designer",
                      "Begginer", "asset/uiux.png"),
                  horDesign(Colors.orangeAccent, "Most Wanted",
                      "Flutter Developer", "Advanced", "asset/online.png"),
                  horDesign(Colors.greenAccent, "Recommended", "Ui/Ux Designer",
                      "Begginer", "asset/uiux.png"),
                ],
              ),
            ),
            Text(
              "Free Online Class",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            Text(
              "From over 80 Lectures",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            verDesign(Colors.orangeAccent, "asset/online.png"),
            SizedBox(
              height: 20,
            ),
            verDesign(Colors.indigoAccent.shade200, "asset/uiux.png"),
          ],
        ),
      ),
    );
  }
}
