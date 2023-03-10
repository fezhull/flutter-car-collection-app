import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/category_screen.dart';
import 'package:flutter_application_1/widgets/products_widget.dart';
import 'package:flutter_application_1/widgets/products1_widget.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class HomeScreen extends StatelessWidget {
  List categories = [
    "volkswagen",
    "mercedes-benz",
    "Toyota",
    "Mitsubishi",
    "Volvo",
    "Ford Ranger",
  ];
  //const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 70, left: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Vitange Collection",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                        color: Colors.black54,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: InkWell(
                        onTap: () {},
                        child: Neumorphic(
                          style: NeumorphicStyle(
                            shape: NeumorphicShape.flat,
                            boxShape: NeumorphicBoxShape.roundRect(
                              BorderRadius.circular(12),
                            ),
                            color: Color(0xfff3f6fd),
                            intensity: 2,
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Icon(Icons.search),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                TabBar(
                    indicatorSize: TabBarIndicatorSize.label,
                    indicatorColor: Colors.black54,
                    labelColor: Colors.black,
                    isScrollable: true,
                    labelStyle: TextStyle(fontWeight: FontWeight.w500),
                    unselectedLabelColor: Colors.black54,
                    tabs: [
                      Tab(
                        text: "Volkswagen",
                      ),
                      Tab(
                        text: "Mercedes-Benz ",
                      ),
                      Tab(
                        text: "Toyota",
                      ),
                      Tab(
                        text: "Mitsubishi",
                      ),
                    ]),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 360,
                  child: TabBarView(children: [
                    ProductsWidget(),
                    Products1Widget(),
                    ProductsWidget(),
                    Products1Widget(),
                  ]),
                ),
                SizedBox(
                  height: 5,
                ),
                SizedBox(
                  height: 70,
                  child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: categories.length,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CategoryScreen(
                                          category: categories[index],
                                        )));
                          },
                          child: Neumorphic(
                            margin: EdgeInsets.all(10),
                            padding: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 25),
                            style: NeumorphicStyle(
                              shape: NeumorphicShape.flat,
                              boxShape: NeumorphicBoxShape.roundRect(
                                  BorderRadius.circular(20)),
                              color: Color(0xFFF3F6FD),
                              intensity: 1,
                            ),
                            child: Center(
                              child: Text(
                                categories[index],
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        );
                      }),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Other Collections",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                    color: Colors.black54,
                  ),
                ),
                ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return ListTile(
                        minLeadingWidth: 70,
                        leading: Image.asset("images/Product ${index + 1}.png"),
                        title: Text(
                          "Vintage Cars",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.black54),
                        ),
                        subtitle: Text(
                          "category",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.black38,
                          ),
                        ),
                        trailing: Text(
                          "\$21500",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      );
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
