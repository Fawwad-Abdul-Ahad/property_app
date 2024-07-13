import 'package:flutter/material.dart';
import 'package:property_app/constants.dart/color.dart';
import 'package:property_app/data/globalfunctions.dart';
import 'package:property_app/views/wishlist_screen.dart';

class House1Details extends StatefulWidget {
  const House1Details({super.key});
  @override
  State<House1Details> createState() => _House1DetailsState();
}
 

class _House1DetailsState extends State<House1Details> {
  final String houseTitle = "CRAFTSMAN HOUSE";

  void toggleWishlist() {
    setState(() {
      if (isInWishlist(houseTitle)) {
        removeFromWishlist(houseTitle);
      } else {
        addToWishlist(houseTitle);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    bool isfavourite = isInWishlist(houseTitle);
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 22),
          child: Column(
            children: [
              Container(
                height: 50,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Details",
                      style: TextStyle(
                        fontSize: 22,
                        color: textMain,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
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
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                height: 280,
                width: 380,
                padding: EdgeInsets.only(right: 18),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(120),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(
                      20), // Adjust the radius to your preference
                  child: Image.asset(
                    "Asset/image/house2.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                height: 18,
              ),
              Container(
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
                          toggleWishlist();
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const WishlistScreen()),
                          );
                        },
                        child: Container(
                          height: 60,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: iconCOlor,
                          ),
                          child: Icon(
                            isfavourite
                                ? Icons.bookmark_added_outlined
                                : Icons.bookmark_add_outlined,
                            size: 28,
                            color: textMain,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Container(
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
                          backgroundColor: MaterialStateProperty.all(textMain),
                          shape:
                              MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          )),
                        ),
                        onPressed: () {},
                        icon: Icon(
                          Icons.call,
                          color: Colors.white,
                        ),
                        label: Text(
                          "Call",
                          style: TextStyle(color: Colors.white, fontSize: 17),
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                  width: 360,
                  child: Text(
                      "Completely redone in 2021. 4 bedrooms. 2 bathrooms. 1 garage. amazing curb appeal and entertainment area water views. Tons of built-ins & extras. Read More")),
              SizedBox(height: 12),
              Container(
                  width: double.infinity,
                  child: Text(
                    "Gallery",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  )),
              SizedBox(
                height: 12,
              ),
              Container(
                width: double.infinity,
                height: 70,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset("Asset/image/gallery1.png"),
                    Image.asset("Asset/image/gallery2.png"),
                    Image.asset("Asset/image/gallery3.png"),
                    Image.asset("Asset/image/gallery4.png"),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity,
                height: 32,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Price",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "\$5990000",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(textMain),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        )),
                      ),
                      onPressed: () {},
                      child: Text(
                        "BUY NOW",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
