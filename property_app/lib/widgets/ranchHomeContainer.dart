import 'package:flutter/material.dart';
// import 'package:property_app/constants.dart/color.dart';

class RanchHomeContainer extends StatelessWidget {
  const RanchHomeContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12.0),
      child: Container(
        // padding: EdgeInsets.only(right: 20),
        width: double.infinity,
        height: 100,
        decoration: BoxDecoration(
          color: Color.fromARGB(251, 233, 251, 255),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            Container(
              height: double.infinity,
              width: 100,
              child: Image.asset("Asset/image/house3.png"),
              
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                height: 100,
                width: 220,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("RANCH HOME",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                    Text("520 N Btoudry Ave Los Angeles"),
                    Image.asset("Asset/image/logos.png"),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}