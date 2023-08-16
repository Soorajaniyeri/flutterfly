import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Catagories extends StatefulWidget {
  const Catagories({super.key});

  @override
  State<Catagories> createState() => _CatagoriesState();
}

class _CatagoriesState extends State<Catagories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        title: Text("Catagories"),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body:ListView(
        children: [
          ListTile(
                  leading: Container(
                    // child: Center(
                    //
                    //   child: Image(
                    //       height: 40,
                    //       image: NetworkImage("https://www.starrynight.co.in/cdn/shop/products/71-PCBNch-L._SL1500_5000x.jpg?v=1619675706")),
                    //
                    // ),
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(


                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                     image: DecorationImage(

                         image: NetworkImage("https://www.shutterstock.com/shutterstock/photos/1165935439/display_1500/stock-vector-vector-illustration-of-chair-on-white-background-1165935439.jpg"),
                     fit: BoxFit.contain)

                    ),

                  ),
                  title: Text(
                    "Decoration",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    "1065",
                    style: TextStyle(color: Colors.grey),
                  ),
                  trailing: Icon(
                    Icons.arrow_right,
                    color: Colors.black,
                  ),
                ),

          Divider(

          ),
          ListTile(
            leading: Container(
              // child: Center(
              //
              //   child: Image(
              //       height: 40,
              //       image: NetworkImage("https://www.starrynight.co.in/cdn/shop/products/71-PCBNch-L._SL1500_5000x.jpg?v=1619675706")),
              //
              // ),
              height: 50,
              width: 50,
              decoration: BoxDecoration(


                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  image: DecorationImage(

                      image: NetworkImage("https://cdn.britannica.com/88/212888-050-6795342C/study-lamp-electrical-cord.jpg"),
                      fit: BoxFit.contain)

              ),

            ),
            title: Text(
              "Celling",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              "1065",
              style: TextStyle(color: Colors.grey),
            ),
            trailing: Icon(
              Icons.arrow_right,
              color: Colors.black,
            ),
          ),

          Divider(

          ),


          ListTile(
            leading: Container(
              // child: Center(
              //
              //   child: Image(
              //       height: 40,
              //       image: NetworkImage("https://www.starrynight.co.in/cdn/shop/products/71-PCBNch-L._SL1500_5000x.jpg?v=1619675706")),
              //
              // ),
              height: 50,
              width: 50,
              decoration: BoxDecoration(


                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  image: DecorationImage(

                      image: NetworkImage("https://cdn.britannica.com/88/212888-050-6795342C/study-lamp-electrical-cord.jpg"),
                      fit: BoxFit.contain)

              ),

            ),
            title: Text(
              "Celling",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              "1065",
              style: TextStyle(color: Colors.grey),
            ),
            trailing: Icon(
              Icons.arrow_right,
              color: Colors.black,
            ),
          ),

          Divider(

          ),

          ListTile(
            leading: Container(
              // child: Center(
              //
              //   child: Image(
              //       height: 40,
              //       image: NetworkImage("https://www.starrynight.co.in/cdn/shop/products/71-PCBNch-L._SL1500_5000x.jpg?v=1619675706")),
              //
              // ),
              height: 50,
              width: 50,
              decoration: BoxDecoration(


                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  image: DecorationImage(

                      image: NetworkImage("https://cdn.britannica.com/88/212888-050-6795342C/study-lamp-electrical-cord.jpg"),
                      fit: BoxFit.contain)

              ),

            ),
            title: Text(
              "Celling",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              "1065",
              style: TextStyle(color: Colors.grey),
            ),
            trailing: Icon(
              Icons.arrow_right,
              color: Colors.black,
            ),
          ),

          Divider(

          ),

          ListTile(
            leading: Container(
              // child: Center(
              //
              //   child: Image(
              //       height: 40,
              //       image: NetworkImage("https://www.starrynight.co.in/cdn/shop/products/71-PCBNch-L._SL1500_5000x.jpg?v=1619675706")),
              //
              // ),
              height: 50,
              width: 50,
              decoration: BoxDecoration(


                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  image: DecorationImage(

                      image: NetworkImage("https://cdn.anscommerce.com/image/tr:e-sharpen-01,h-822,w-940,cm-pad_resize/data/khadims/07-nov-2020/55013355050_1.jpg"),
                      fit: BoxFit.contain)

              ),

            ),
            title: Text(
              "Wooden",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              "1065",
              style: TextStyle(color: Colors.grey),
            ),
            trailing: Icon(
              Icons.arrow_right,
              color: Colors.black,
            ),
          ),

          Divider(

          ),


          ListTile(
            leading: Container(
              // child: Center(
              //
              //   child: Image(
              //       height: 40,
              //       image: NetworkImage("https://www.starrynight.co.in/cdn/shop/products/71-PCBNch-L._SL1500_5000x.jpg?v=1619675706")),
              //
              // ),
              height: 50,
              width: 50,
              decoration: BoxDecoration(


                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  image: DecorationImage(

                      image: NetworkImage("https://cdn.anscommerce.com/image/tr:e-sharpen-01,h-822,w-940,cm-pad_resize/data/khadims/07-nov-2020/55013355050_1.jpg"),
                      fit: BoxFit.contain)

              ),

            ),
            title: Text(
              "Wooden",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              "1065",
              style: TextStyle(color: Colors.grey),
            ),
            trailing: Icon(
              Icons.arrow_right,
              color: Colors.black,
            ),
          ),

          Divider(

          ),


          ListTile(
            leading: Container(
              // child: Center(
              //
              //   child: Image(
              //       height: 40,
              //       image: NetworkImage("https://www.starrynight.co.in/cdn/shop/products/71-PCBNch-L._SL1500_5000x.jpg?v=1619675706")),
              //
              // ),
              height: 50,
              width: 50,
              decoration: BoxDecoration(


                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  image: DecorationImage(

                      image: NetworkImage("https://cdn.anscommerce.com/image/tr:e-sharpen-01,h-822,w-940,cm-pad_resize/data/khadims/07-nov-2020/55013355050_1.jpg"),
                      fit: BoxFit.contain)

              ),

            ),
            title: Text(
              "Wooden",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              "1065",
              style: TextStyle(color: Colors.grey),
            ),
            trailing: Icon(
              Icons.arrow_right,
              color: Colors.black,
            ),
          ),

          Divider(

          ),


        ],
      ));

  }
}
