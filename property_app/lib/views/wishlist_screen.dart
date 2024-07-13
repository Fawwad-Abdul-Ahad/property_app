import 'package:flutter/material.dart';
import 'package:property_app/constants.dart/color.dart';
import 'package:property_app/data/globalfunctions.dart';
import 'package:property_app/views/house1_details_screen.dart';
import 'package:property_app/widgets/house_details.dart';

class WishlistScreen extends StatefulWidget {
  const WishlistScreen({super.key});

  @override
  State<WishlistScreen> createState() => _WishlistScreenState();
}

class _WishlistScreenState extends State<WishlistScreen> {
  @override
  Widget build(BuildContext context) {
    List<String> wishlist = getWishlist();

    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text(
          "Wishlist",
          style: TextStyle(fontSize: 22, color: textMain),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                height: 45,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: iconCOlor,
                ),
                child: Icon(
                  Icons.arrow_back_ios_new_rounded,
                  size: 28,
                ),
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 28.0, right: 18.0),
        child: wishlist.isNotEmpty
            ? ListView.builder(
                itemCount: wishlist.length,
                itemBuilder: (context, index) {
                  final title = wishlist[index];
                  final houseDetails = detailsByTitle(title);
                  return Padding(
                    padding: const EdgeInsets.all(28.0),
                    child: DetailsContainer(title: houseDetails['title'], address: houseDetails['address'], image: houseDetails['image']),
                  );
                },
              )
            : Center(
                child: Text(
                  "No items in wishlist",
                  style: TextStyle(fontSize: 18, color: textMain),
                ),
              ),
      ),
    );
  }
}

Map<String, dynamic> detailsByTitle(String title) {
  if (title == "CRAFTSMAN HOUSE") {
    return {
      "title": "CRAFTSMAN HOUSE",
      'address': "520 N Btoudy Ave LOS ANGELES",
      "image": 'Asset/image/Subtract.png',
    };
  } else if (title == "CRAFTSMAN HOUSE 1") {
    return {
      'title': 'Craftsmen House 1',
      'address': '500 N Beaudary Ave Los, Angeles',
      'image': 'Asset/image/Subtract.png',
    };
  } else {
    return {
      'title': 'Unknown',
      'address': 'Unknown Address',
      'image': 'Asset/image/unknown.png',
      'price': 0,
    };
  }
}
