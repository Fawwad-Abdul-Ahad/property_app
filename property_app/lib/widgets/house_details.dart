import 'package:flutter/material.dart';
import 'package:property_app/constants.dart/color.dart';
import 'package:property_app/views/house1_details_screen.dart';

class  DetailsContainer extends StatelessWidget {
  const DetailsContainer ({super.key,required this.title, required this.address, required this.image});
 final String title;
  final String address;
  final String image;
  // final double price;
  @override
  Widget build(BuildContext context) {
    return InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const House1Details()),
                  );
                },
                child: Container(
                  height: 300,
                  // width: 700,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
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
                            child: Image.asset(image),
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
                                  title,
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 17),
                                ),
                                Text(
                                  address,
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
                ),
              );
  }
}