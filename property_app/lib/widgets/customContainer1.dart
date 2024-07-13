import 'package:flutter/material.dart';
import 'package:property_app/constants.dart/color.dart';

class CraftsmenContaner extends StatelessWidget {
  const CraftsmenContaner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
                height: 80,
                width: double.infinity,
                child: Row(
                  children: [
                    Container(
                      width: 300,
                      height: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "CRAFTSMAN HOUSE",
                            style: TextStyle(
                                fontSize: 19,
                                fontWeight: FontWeight.w700,
                                color: textMain),
                          ),
                          Text(
                            "520 N Beaudary Ave Los, Angeles",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: textMain),
                          ),
                          Container(
                            width: 250,
                            height: 30,
                            child: Image.asset("Asset/image/logos.png"),
                          ),
                        ],
                      ),

                    
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          height: 60,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: iconCOlor,
                          ),
                          child: Icon(
                            Icons.bookmark_add_outlined,
                            size: 28,
                            color: textMain,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
  }
}