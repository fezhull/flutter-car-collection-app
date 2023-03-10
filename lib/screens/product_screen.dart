import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class ProductScreen extends StatelessWidget {
  //const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF2F5FC),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 50, left: 15, right: 15),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.arrow_back, size: 30),
                ),
                Text(
                  "Favorite Vintage",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                    color: Colors.black54,
                  ),
                ),
                Neumorphic(
                  style: NeumorphicStyle(
                    shape: NeumorphicShape.concave,
                    boxShape:
                        NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
                    color: Color(0xFFF3F6FD),
                    intensity: 1,
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Icon(
                      Icons.favorite,
                      color: Colors.redAccent,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.all(5),
              child: Image.asset(
                "images/Product 1.png",
                fit: BoxFit.cover,
                height: 250,
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Car Price",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: Text(
                    "\$15200",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                  ),
                )
              ],
            ),
            Text(
              "Volkswagen",
              style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                  color: Colors.black38),
            ),
            SizedBox(height: 20),
            Text(
              "A vintage car is, in the most general sense, an old automobile, and in the narrower senses of car enthusiasts and collectors, it is a car from the period of 1919 to 1930. Such enthusiasts have categorization schemes for ages of cars that enforce distinctions between antique cars, vintage cars, classic cars, and so on. The classification criteria vary, but consensus within any country is often maintained by major car clubs, for example the Vintage Sports-Car Club (VSCC) in the UK",
              style: TextStyle(fontSize: 16, color: Colors.black38),
              textAlign: TextAlign.justify,
            )
          ]),
        ),
      ),
      bottomNavigationBar: Container(
        height: 90,
        decoration: BoxDecoration(
            color: Color(
              0xFFF3F6FD,
            ),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30)),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 4,
                spreadRadius: 2,
              )
            ]),
        child: Center(
          child: Padding(
            padding: EdgeInsets.only(top: 20),
            child: Text(
              "+ Add to Cart",
              style: TextStyle(
                color: Color(0xFF35324C),
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: InkWell(
        onTap: () {},
        child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: Color(0XFF35324C),
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 4,
                  spreadRadius: 4,
                )
              ]),
          child: Icon(
            CupertinoIcons.cart_badge_plus,
            color: Colors.white,
            size: 30,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
