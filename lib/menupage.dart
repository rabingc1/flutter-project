import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class menupage extends StatelessWidget {
  const menupage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Menu Items"),
      ),
      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 15,
        crossAxisCount: 2,
        children: [
          Column(
            children: [
              Container(

                height: 105,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  image: const DecorationImage(
                    image: AssetImage("image/menuimage/briyani.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Column(
             children: [
               Text("Chicken Briyani", style: TextStyle(
                   fontSize: 20,
                   color: Colors.blue,
                   fontWeight: FontWeight.bold,),),
               Text("RS=250", style: TextStyle(
                   fontSize: 15,
                   color: Colors.blue,
                   fontWeight: FontWeight.bold),),
               Text("3% Cash Back", style: TextStyle(
                   fontSize: 15,
                   color: Colors.blue,
                   fontWeight: FontWeight.bold,decoration: TextDecoration.underline),)
             ],
           ),
            ],
          ),
          Column(
            children: [
              Container(

                height: 105,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  image: const DecorationImage(
                    image: AssetImage("image/menuimage/burger.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Column(
                children: [
                  Text("Burger", style: TextStyle(
                    fontSize: 20,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,),),
                  Text("RS=150", style: TextStyle(
                      fontSize: 15,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold),),
                  Text("3% Cash Back", style: TextStyle(
                      fontSize: 15,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,decoration: TextDecoration.underline),)
                ],
              ),
            ],
          ),
          Column(
            children: [
              Container(

                height: 105,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  image: const DecorationImage(
                    image: AssetImage("image/menuimage/crispyfried.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Column(
                children: [
                  Text("momo", style: TextStyle(
                    fontSize: 20,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,),),
                  Text("RS=150", style: TextStyle(
                      fontSize: 15,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold),),
                  Text("3% Cash Back", style: TextStyle(
                      fontSize: 15,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,decoration: TextDecoration.underline),)
                ],
              ),
            ],
          ),
          Column(
            children: [
              Container(

                height: 105,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  image: const DecorationImage(
                    image: AssetImage("image/kimanoodles.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Column(
                children: [
                  Text("momo", style: TextStyle(
                    fontSize: 20,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,),),
                  Text("RS=150", style: TextStyle(
                      fontSize: 15,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold),),
                  Text("3% Cash Back", style: TextStyle(
                      fontSize: 15,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,decoration: TextDecoration.underline),)
                ],
              ),
            ],
          ),
          Column(
            children: [
              Container(

                height: 105,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  image: const DecorationImage(
                    image: AssetImage("image/kimanoodles.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Column(
                children: [
                  Text("momo", style: TextStyle(
                    fontSize: 20,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,),),
                  Text("RS=150", style: TextStyle(
                      fontSize: 15,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold),),
                  Text("3% Cash Back", style: TextStyle(
                      fontSize: 15,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,decoration: TextDecoration.underline),)
                ],
              ),
            ],
          ),
          Column(
            children: [
              Container(

                height: 105,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  image: const DecorationImage(
                    image: AssetImage("image/kimanoodles.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Column(
                children: [
                  Text("momo", style: TextStyle(
                    fontSize: 20,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,),),
                  Text("RS=150", style: TextStyle(
                      fontSize: 15,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold),),
                  Text("3% Cash Back", style: TextStyle(
                      fontSize: 15,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,decoration: TextDecoration.underline),)
                ],
              ),
            ],
          ),



        ],
      ),


    );
  }
}
