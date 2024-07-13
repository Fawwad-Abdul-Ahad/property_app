import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:property_app/constants.dart/color.dart';
import 'package:property_app/views/house1_details_screen.dart';
import 'package:property_app/views/house2_details_container.dart';
// import 'package:property_app/views/house1_details_screen.dart';
// import 'package:property_app/widgets/house_details.dart';
import 'package:property_app/widgets/ranchHomeContainer.dart';
// import 'package:flutter/';

class RepresentScreen extends StatelessWidget {
  const RepresentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          padding: EdgeInsets.only(left: 20, top: 10, bottom: 10, right: 5),
          color: Colors.white,
          child: Column(
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Location",
                            style: TextStyle(color: textMain),
                          ),
                          Text(
                            "Los,Angeles , CA",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                                color: textMain),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20.0),
                      child: GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 50,
                          width: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: iconCOlor,
                          ),
                          child: Icon(
                            Icons.bookmark_add_outlined,
                            size: 28,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 80,
                width: double.infinity,
                child: Text(
                  "Discover Best\nSuitable Property",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: textMain),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 50,
                width: double.infinity,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          "House",
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255)),
                        ),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(textMain),
                          shape:
                              MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          )),
                        ),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          "Flat",
                          style: TextStyle(
                              color: const Color.fromARGB(255, 27, 27, 27)),
                        ),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              Color.fromARGB(255, 239, 252, 255)),
                          shape:
                              MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          )),
                        ),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          "Apartment",
                          style: TextStyle(
                              color: const Color.fromARGB(255, 27, 27, 27)),
                        ),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              Color.fromARGB(255, 239, 252, 255)),
                          shape:
                              MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          )),
                        ),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          "House",
                          style: TextStyle(
                              color: const Color.fromARGB(255, 27, 27, 27)),
                        ),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              Color.fromARGB(255, 239, 252, 255)),
                          shape:
                              MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          )),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 28),
              Container(
                height: 30,
                width: double.infinity,
                child: Text(
                  "Best for you",
                  style: TextStyle(
                      fontSize: 16,
                      color: textMain,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                height: 300,
                // width: 700,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const House1Details()),
                          );
                        },
                        child: Container(
                          height: double.infinity,
                          width: 290,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 196, 196, 196),
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Column(
                            children: [
                              Container(
                                height: 200,
                                width: double.infinity,
                                // color: Colors.green,
                                child: Image.asset("Asset/image/Subtract.png"),
                              ),
                              Container(
                                // height: double.infinity,
                                height: 100,
                                padding: EdgeInsets.all(18),
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: textMain,
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(25),
                                      bottomRight: Radius.circular(25)),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "CRAFTSMAN HOUSE",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 17),
                                    ),
                                    Text(
                                      "520 N Btoudy Ave Los Angeles",
                                      style: TextStyle(
                                          color: Color.fromARGB(
                                              255, 174, 174, 174),
                                          fontSize: 13),
                                    ),
                                    SizedBox(
                                      height: 1,
                                    ),
                                    Container(
                                      height: 20,
                                      width: 220,
                                      child:
                                          Image.asset("Asset/image/logos.png"),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const House2Details()),
                          );
                        },
                        child: Container(
                          height: double.infinity,
                          width: 290,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 196, 196, 196),
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Column(
                            children: [
                              Container(
                                height: 200,
                                width: double.infinity,
                                // color: Colors.green,
                                child: Image.asset("Asset/image/Subtract.png"),
                              ),
                              Container(
                                // height: double.infinity,
                                height: 100,
                                padding: EdgeInsets.all(18),
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: textMain,
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(25),
                                      bottomRight: Radius.circular(25)),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "CRAFTSMAN HOUSE 1",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 17),
                                    ),
                                    Text(
                                      "50 N Btoudy Ave Los Angeles",
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 174, 174, 174),
                                          fontSize: 13),
                                    ),
                                    SizedBox(
                                      height: 1,
                                    ),
                                    Container(
                                      height: 20,
                                      width: 220,
                                      child: Image.asset("Asset/image/logos.png"),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 18,
              ),
              Container(
                width: double.infinity,
                height: 30,
                child: Text(
                  "Nearby your Location",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              RanchHomeContainer(),
            ],
          ),
        ),
      ),
    );
  }
}
