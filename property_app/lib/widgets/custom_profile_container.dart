import 'package:flutter/material.dart';
import 'package:property_app/constants.dart/color.dart';

class CustomProfile extends StatelessWidget {
  const CustomProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
                width: double.infinity,
                height: 50,
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      child: Image.asset('Asset/image/logo1.png'),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 3.0),
                      child: Container(
                        height: 45,
                        width: 180,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Rebecca Tetha",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: textMain),
                            ),
                            Text(
                              "Owner Craftsmen House",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 108, 108, 108),
                                  fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                    ),
                    ElevatedButton.icon(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              textMain),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          )),
                        ),
                        onPressed: () {},
                        icon: Icon(Icons.call,color: Colors.white,),
                        label: Text("Call",style: TextStyle(color: Colors.white,fontSize: 17),)),
                  ],
                ),
              );
  }
}