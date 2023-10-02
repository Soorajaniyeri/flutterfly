import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class StudyClass2 extends StatefulWidget {
  const StudyClass2({super.key});

  @override
  State<StudyClass2> createState() => _StudyClass2State();
}

class _StudyClass2State extends State<StudyClass2> {
  menuItems(
      {required Color bgClr,
      required String title,
      required String duration,
      required Color bgImageClr,
      required String imageUrl,
      required bool status}) {
    return Container(
      //padding: EdgeInsets.all(20),
      margin: EdgeInsets.all(10),
      height: 90,
      decoration: BoxDecoration(
          color: bgClr, borderRadius: BorderRadius.all(Radius.circular(20))),

      child: Row(
        children: [
          Container(
            height: 90,
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              color: bgImageClr,
            ),
            child: Center(
              child: Image(height: 70, width: 70, image: AssetImage(imageUrl)),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Text(
                    duration,
                    textAlign: TextAlign.start,
                    style: TextStyle(color: Colors.white60),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  status == false
                      ? SizedBox()
                      : Container(
                          height: 20,
                          width: 50,
                          decoration: BoxDecoration(
                              color: Colors.pinkAccent.shade200,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Center(
                              child: Text(
                            "New",
                            style: TextStyle(color: Colors.white),
                          )),
                        )
                ],
              )
            ],
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: SafeArea(
          child: ListView(
        children: [
          Container(
            height: 300,
            decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                )),
            child: Stack(
              children: [
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    height: 280,
                    width: 250,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage("asset/online.png"))),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: RatingBar(
                itemSize: 20,
                ratingWidget: RatingWidget(
                    full: Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    half: Icon(Icons.star),
                    empty: Icon(
                      Icons.star,
                      color: Colors.yellow,
                    )),
                onRatingUpdate: (value) {}),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              "Graphic Design Master",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Row(
              children: [
                Container(
                  height: 30,
                  width: 100,
                  child: Stack(children: [
                    Positioned(
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage("asset/woman1.png")),
                            shape: BoxShape.circle,
                            color: Colors.white),
                      ),
                      left: 5,
                    ),
                    Positioned(
                      left: 23,
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage("asset/woman.png")),
                            shape: BoxShape.circle,
                            color: Colors.green),
                      ),
                    ),
                    Positioned(
                      left: 40,
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage("asset/man.png")),
                            shape: BoxShape.circle,
                            color: Colors.orange),
                      ),
                    ),
                    Positioned(
                      left: 60,
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage("asset/boy.png")),
                            shape: BoxShape.circle,
                            color: Colors.blue),
                      ),
                    )
                  ]),
                ),
                Text(
                  "+20K Members",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 70,
                ),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      color: Colors.deepPurple.shade300),
                  child: Icon(
                    Icons.thumb_up_sharp,
                    color: Colors.white60,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          menuItems(
              bgClr: Colors.deepPurple.shade400,
              title: "Introduction Design Graphics",
              duration: "12 Minutes",
              bgImageClr: Colors.pinkAccent,
              imageUrl: "asset/web-design.png",
              status: true),
          menuItems(
              bgClr: Colors.transparent,
              title: "Fundamental of Design",
              duration: "16 Minutes",
              bgImageClr: Colors.amberAccent,
              imageUrl: "asset/software.png",
              status: false),
          menuItems(
              bgClr: Colors.transparent,
              title: "Layout Design",
              duration: "10 Minutes",
              bgImageClr: Colors.blueAccent,
              imageUrl: "asset/layers.png",
              status: false)
        ],
      )),
    );
  }
}
