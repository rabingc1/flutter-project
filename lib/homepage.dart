import 'dart:developer';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


import 'menupage.dart';

class homepage extends StatefulWidget {
  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  var food = "PASTA";
  Color _favIconColor = Colors.white;
  Color _favIconColor1 = Colors.white;
  Color _favIconColor2 = Colors.white;
  Color _favIconColor3 = Colors.white;
  Color _favIconColor4 = Colors.white;
  Color _favIconColor5 = Colors.white;

  bool click = true;

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        body: ListView(
          children: [
            CarouselSlider(
              items: [
                //1st Image of Slider
                Container(
                  child: Image.asset("image/slidingimage/offerimage3.png"),
                  /*  margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: const DecorationImage(
                    image: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/thumb/6/6d/Good_Food_Display_-_NCI_Visuals_Online.jpg/450px-Good_Food_Display_-_NCI_Visuals_Online.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),*/
                ),
                //2nd Image of Slider
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: AssetImage("image/slidingimage/offerimage2.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                //3rd Image of Slider
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: AssetImage("image/menuimage/crispyfried.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                //4th Image of Slider
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: const DecorationImage(
                      image: AssetImage("image/slidingimage/offerimage4.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                //5th Image of Slider
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: const DecorationImage(
                      image: AssetImage("image/slidingimage/offerimage5.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],

              //Slider Container properties
              options: CarouselOptions(
                height: 200.0,
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 16 / 2,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                viewportFraction: 0.79,
              ),
            ),
            Container(
              height: 20,
            ),
            Row(
              children: [
                const Text("Today's Special",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    )),
                Spacer(),
                IconButton(
                  icon: Icon(
                    Icons.double_arrow,
                    size: 35.0,
                  ),
                  color: Colors.blue,
                  tooltip: 'more',
                  onPressed: () {},
                ),
              ],
            ),
            Container(
              height: 5,
            ),
            /*Container(


          child:      Row(
            children: [
              SizedBox(

                height: 200,
                width: 250.0,
                child: Card(
                  color: Colors.black12,
                  shape:RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)
                  ),
                  margin: EdgeInsets.all(10),
                  child:Image.asset(
                    'image/momo.jpg',
                    height: 100,
                    width: 100,

                  )
                ),

              ),


            ],
          ),

        )*/
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  Container(
                    height: 150.0,
                    width: 160,
                    margin: const EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0),
                      image: const DecorationImage(
                        image: AssetImage("image/kimanoodles.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(90.0),
                      ),
                      color: Colors.white10,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 5, top: 25, right: 5, bottom: 0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  "$food ",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                Spacer(),
                                IconButton(
                                  icon: Icon(
                                    Icons.add_shopping_cart,
                                    size: 35.0,
                                  ),
                                  color: Colors.white,
                                  tooltip: 'Add to Cart',
                                  onPressed: () {
                                    Get.snackbar(
                                        "your product is added to cart",
                                        "You can check out on cart Button",
                                        snackPosition: SnackPosition.TOP,
                                        colorText: Colors.green,
                                        backgroundColor: Colors.greenAccent,
                                        borderRadius: 30,
                                        maxWidth: 300,
                                        animationDuration:
                                        Duration(milliseconds: 1500),
                                        duration: Duration(milliseconds: 1300));

                                  },
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "RS=150",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                Spacer(),
                                IconButton(
                                  icon: Icon(
                                    Icons.favorite,
                                    size: 35.0,
                                  ),
                                  color: _favIconColor,
                                  tooltip: 'Add to favorite',
                                  onPressed: () {
                                    Get.snackbar(
                                        "your product is added to Favorite ",
                                        "You can check out on Favorite Button",
                                        snackPosition: SnackPosition.TOP,
                                        colorText: Colors.green,
                                        backgroundColor: Colors.greenAccent,
                                        borderRadius: 30,
                                        maxWidth: 300,
                                        animationDuration:
                                        Duration(milliseconds: 1500),
                                        duration: Duration(milliseconds: 1300));
                                    setState(() {
                                      if (_favIconColor == Colors.white) {
                                        _favIconColor = Colors.red;
                                      } else {
                                        _favIconColor = Colors.white;
                                      }
                                    }
                                    );
                                  },
                                ),
                              ],
                            ),
                            Text(
                              "5% Cash Back",
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.underline),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 150.0,
                    width: 160,
                    margin: const EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0),
                      image: const DecorationImage(
                        image: AssetImage("image/momo.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(90.0),
                      ),
                      color: Colors.white10,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 5, top: 25, right: 5, bottom: 0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Momo ",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                Spacer(),
                                IconButton(
                                  icon: Icon(
                                    Icons.add_shopping_cart,
                                    size: 35.0,
                                  ),
                                  color: Colors.white,
                                  tooltip: 'Add to Cart',
                                  onPressed: () {
                                    Get.snackbar(
                                        "your product is added to cart",
                                        "You can check out on cart Button",
                                        snackPosition: SnackPosition.TOP,
                                        colorText: Colors.green,
                                        backgroundColor: Colors.greenAccent,
                                        borderRadius: 30,
                                        maxWidth: 300,
                                        animationDuration:
                                        Duration(milliseconds: 1500),
                                        duration: Duration(milliseconds: 1300));
                                  },
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "RS=120",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                Spacer(),
                                IconButton(
                                  icon: Icon(
                                    Icons.favorite,
                                    size: 35.0,
                                  ),
                                  color: _favIconColor1,
                                  tooltip: 'Add to favorite',
                                  onPressed: () {
                                    Get.snackbar(
                                        "your product is added to cart",
                                        "You can check out on cart Button",
                                        snackPosition: SnackPosition.TOP,
                                        colorText: Colors.green,
                                        backgroundColor: Colors.greenAccent,
                                        borderRadius: 30,
                                        maxWidth: 300,
                                        animationDuration:
                                        Duration(milliseconds: 1500),
                                        duration: Duration(milliseconds: 1300));
                                    setState(() {
                                      if (_favIconColor1 == Colors.white) {
                                        _favIconColor1 = Colors.red;
                                      } else {
                                        _favIconColor1 = Colors.white;
                                      }
                                    });
                                  },
                                ),
                              ],
                            ),
                            Text(
                              "3% Cash Back",
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 150.0,
                    width: 160,
                    margin: const EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0),
                      image: const DecorationImage(
                        image: AssetImage("image/piza.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(90.0),
                      ),
                      color: Colors.white10,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 5, top: 55, right: 5, bottom: 0),
                        child: Column(
                          children: [
                            Text(
                              "Pizza ",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Row(
                              children: [
                                Text(
                                  "RS=150",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                Spacer(),
                                IconButton(
                                  icon: Icon(
                                    Icons.favorite,
                                    size: 35.0,
                                  ),
                                  color: _favIconColor,
                                  tooltip: 'Add to favorite',
                                  onPressed: () {
                                    setState(() {
                                      if (_favIconColor == Colors.white) {
                                        _favIconColor = Colors.red;
                                      } else {
                                        _favIconColor = Colors.white;
                                      }
                                    });
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              height: 20.0,
              color: Colors.black,
            ),
            Row(
              children: [
                const Text("Menu",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    )),
                Spacer(),
                IconButton(
                  icon: Icon(
                    Icons.double_arrow,
                    size: 35.0,
                  ),
                  color: Colors.blue,
                  tooltip: 'more',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const menupage()),
                      );
                    }
                ),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  Container(
                    height: 150.0,
                    width: 160,
                    margin: const EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0),
                      image: const DecorationImage(
                        image: AssetImage("image/menuimage/crispyfried.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(90.0),
                      ),
                      color: Colors.white10,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 5, top: 25, right: 5, bottom: 0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  " Crispy  ",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                Spacer(),
                                IconButton(
                                  icon: Icon(
                                    Icons.add_shopping_cart,
                                    size: 35.0,
                                  ),
                                  color: Colors.white,
                                  tooltip: 'Add to Cart',
                                  onPressed: () {
                                    Get.snackbar(
                                        "your product is added to cart",
                                        "You can check out on cart Button",
                                        snackPosition: SnackPosition.TOP,
                                        colorText: Colors.green,
                                        backgroundColor: Colors.greenAccent,
                                        borderRadius: 30,
                                        maxWidth: 300,
                                        animationDuration:
                                            Duration(milliseconds: 1500),
                                        duration: Duration(milliseconds: 1300));
                                  },
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "RS=250",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                Spacer(),
                                IconButton(
                                  icon: Icon(
                                    Icons.favorite,
                                    size: 35.0,
                                  ),
                                  color: _favIconColor,
                                  tooltip: 'Add to favorite',
                                  onPressed: () {
                                    Get.snackbar(
                                        "your product is added to cart",
                                        "You can check out on cart Button",
                                        snackPosition: SnackPosition.TOP,
                                        colorText: Colors.green,
                                        backgroundColor: Colors.greenAccent,
                                        borderRadius: 30,
                                        maxWidth: 300,
                                        animationDuration:
                                        Duration(milliseconds: 1500),
                                        duration: Duration(milliseconds: 1300));
                                    setState(() {
                                      if (_favIconColor == Colors.white) {
                                        _favIconColor = Colors.red;
                                      } else {
                                        _favIconColor = Colors.white;
                                      }
                                    });
                                  },
                                ),
                              ],
                            ),
                            Text(
                              "5% Cash Back",
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.underline),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 150.0,
                    width: 160,
                    margin: const EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0),
                      image: const DecorationImage(
                        image: AssetImage("image/menuimage/kattirole.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(90.0),
                      ),
                      color: Colors.white10,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 5, top: 25, right: 5, bottom: 0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                const Text(
                                  "Momo ",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                Spacer(),
                                IconButton(
                                  icon: const Icon(
                                    Icons.add_shopping_cart,
                                    size: 35.0,
                                  ),
                                  color: Colors.white,
                                  tooltip: 'Add to Cart',
                                  onPressed: () {},
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                const Text(
                                  "RS=120",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                Spacer(),
                                IconButton(
                                  icon: Icon(
                                    Icons.favorite,
                                    size: 35.0,
                                  ),
                                  color: _favIconColor1,
                                  tooltip: 'Add to favorite',
                                  onPressed: () {
                                    setState(() {
                                      if (_favIconColor1 == Colors.white) {
                                        _favIconColor1 = Colors.red;
                                      } else {
                                        _favIconColor1 = Colors.white;
                                      }
                                    });
                                  },
                                ),
                              ],
                            ),
                            Text(
                              "3% Cash Back",
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 150.0,
                    width: 160,
                    margin: const EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0),
                      image: const DecorationImage(
                        image: AssetImage("image/piza.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(90.0),
                      ),
                      color: Colors.white10,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 5, top: 55, right: 5, bottom: 0),
                        child: Column(
                          children: [
                            Text(
                              "Pizza ",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Row(
                              children: [
                                Text(
                                  "RS=150",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                Spacer(),
                                IconButton(
                                  icon: Icon(
                                    Icons.favorite,
                                    size: 35.0,
                                  ),
                                  color: _favIconColor,
                                  tooltip: 'Add to favorite',
                                  onPressed: () {
                                    setState(() {
                                      if (_favIconColor == Colors.white) {
                                        _favIconColor = Colors.red;
                                      } else {
                                        _favIconColor = Colors.white;
                                      }
                                    });
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              height: 20.0,
              color: Colors.black,
            ),
            Container(
                //----------------------------------------------------videos
                ),
            Row(
              children: [
                const Text("Drinks",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    )),
                Spacer(),
                IconButton(
                  icon: Icon(
                    Icons.double_arrow,
                    size: 35.0,
                  ),
                  color: Colors.blue,
                  tooltip: 'more',
                  onPressed: () {},
                ),
              ],
            ), //drinks

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  Container(
                    height: 150.0,
                    width: 160,
                    margin: const EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0),
                      image: const DecorationImage(
                        image: AssetImage("image/kimanoodles.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(90.0),
                      ),
                      color: Colors.white10,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 5, top: 25, right: 5, bottom: 0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  "chauchau ",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                Spacer(),
                                IconButton(
                                  icon: Icon(
                                    Icons.add_shopping_cart,
                                    size: 35.0,
                                  ),
                                  color: Colors.white,
                                  tooltip: 'Add to Cart',
                                  onPressed: () {},
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "RS=150",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                Spacer(),
                                IconButton(
                                  icon: Icon(
                                    Icons.favorite,
                                    size: 35.0,
                                  ),
                                  color: _favIconColor,
                                  tooltip: 'Add to favorite',
                                  onPressed: () {
                                    setState(() {
                                      if (_favIconColor == Colors.white) {
                                        _favIconColor = Colors.red;
                                      } else {
                                        _favIconColor = Colors.white;
                                      }
                                    });
                                  },
                                ),
                              ],
                            ),
                            Text(
                              "5% Cash Back",
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.underline),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 150.0,
                    width: 160,
                    margin: const EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0),
                      image: const DecorationImage(
                        image: AssetImage("image/momo.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(90.0),
                      ),
                      color: Colors.white10,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 5, top: 25, right: 5, bottom: 0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Momo ",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                Spacer(),
                                IconButton(
                                  icon: Icon(
                                    Icons.add_shopping_cart,
                                    size: 35.0,
                                  ),
                                  color: Colors.white,
                                  tooltip: 'Add to Cart',
                                  onPressed: () {},
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "RS=120",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                Spacer(),
                                IconButton(
                                  icon: Icon(
                                    Icons.favorite,
                                    size: 35.0,
                                  ),
                                  color: _favIconColor1,
                                  tooltip: 'Add to favorite',
                                  onPressed: () {
                                    setState(() {
                                      if (_favIconColor1 == Colors.white) {
                                        _favIconColor1 = Colors.red;
                                      } else {
                                        _favIconColor1 = Colors.white;
                                      }
                                    });
                                  },
                                ),
                              ],
                            ),
                            Text(
                              "4% Cash Back",
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 150.0,
                    width: 160,
                    margin: const EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0),
                      image: const DecorationImage(
                        image: AssetImage("image/piza.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(90.0),
                      ),
                      color: Colors.white10,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 5, top: 55, right: 5, bottom: 0),
                        child: Column(
                          children: [
                            Text(
                              "Pizza ",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Row(
                              children: [
                                Text(
                                  "RS=150",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                Spacer(),
                                IconButton(
                                  icon: Icon(
                                    Icons.favorite,
                                    size: 35.0,
                                  ),
                                  color: _favIconColor,
                                  tooltip: 'Add to favorite',
                                  onPressed: () {
                                    setState(() {
                                      if (_favIconColor == Colors.white) {
                                        _favIconColor = Colors.red;
                                      } else {
                                        _favIconColor = Colors.white;
                                      }
                                    });
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              height: 20.0,
              color: Colors.black,
            ),

          ],
        ),
      ),
    );
  }
}
