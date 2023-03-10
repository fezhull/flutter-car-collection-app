import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/product_screen.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class CatProductCard extends StatelessWidget {
  //const CatProductCard({super.key});

  int pIndex;
  CatProductCard(this.pIndex);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Neumorphic(
        style: NeumorphicStyle(
          shape: NeumorphicShape.flat,
          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
          color: Color(0Xfff3f6fd),
          intensity: 2,
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProductScreen(),
                      ));
                },
                child: Image.asset(
                  "images/Product ${pIndex + 1}.png",
                  height: 150,
                  width: 150,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                "Car Price",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.black45),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                "\$15200",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
