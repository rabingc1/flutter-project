import 'package:flutter/material.dart';
import 'package:sliding_clipped_nav_bar/sliding_clipped_nav_bar.dart';

import 'homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        canvasColor: Color.fromARGB(255, 232, 234, 222),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late PageController _pageController;
  int selectedIndex = 0;
  bool _colorful = false;
  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: selectedIndex);
  }

  void onButtonPressed(int index) {
    setState(() {
      selectedIndex = index;
    });
    _pageController.animateToPage(selectedIndex,
        duration: const Duration(milliseconds: 400), curve: Curves.easeOutQuad);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          SafeArea(
              child: SwitchListTile(
                title: const Text('food'),
                value: _colorful,
                onChanged: (bool value) {
                  setState(() {
                    _colorful = !_colorful;
                  });
                },
              )),
          Expanded(
            child: PageView(
              physics: const NeverScrollableScrollPhysics(),
              controller: _pageController,
              children: _listOfWidget,
            ),
          ),
        ],
      ),
      bottomNavigationBar: _colorful
          ? SlidingClippedNavBar.colorful(
        backgroundColor: Colors.white,
        onButtonPressed: onButtonPressed,
        iconSize: 25,
        // activeColor: const Color(0xFF01579B),
        selectedIndex: selectedIndex,
        barItems: <BarItem>[
          BarItem(
            icon: Icons.home,
            title: 'Home',
            activeColor: Colors.blue,
            inactiveColor: Colors.orange,
          ),
          BarItem(
            icon: Icons.favorite_border,
            title: 'Favorite',
            activeColor: Colors.yellow,
            inactiveColor: Colors.green,
          ),
          BarItem(
            icon: Icons.add_shopping_cart_sharp,
            title: 'Cart',
            activeColor: Colors.blue,
            inactiveColor: Colors.red,
          ),
          BarItem(
            icon: Icons.perm_identity,
            title: 'Id',
            activeColor: Colors.cyan,
            inactiveColor: Colors.purple,
          ),

        ],
      )
          : SlidingClippedNavBar(
        backgroundColor: Colors.white,
        onButtonPressed: onButtonPressed,
        iconSize: 30,
        activeColor: const Color(0xFF01579B),
        selectedIndex: selectedIndex,
        barItems: <BarItem>[
          BarItem(
            icon: Icons.home,
            title: 'Home',
          ),
          BarItem(
            icon: Icons.favorite_border,
            title: 'Favorite',
          ),
          BarItem(
            icon: Icons.add_shopping_cart_sharp,
            title: 'Cart',
          ),
          BarItem(
            icon: Icons.perm_identity,
            title: 'Id',
          ),

        ],
      ),
    );
  }
}

// icon size:24 for fontAwesomeIcons
// icons size: 30 for MaterialIcons

List<Widget> _listOfWidget = <Widget>[
  Container(
    alignment: Alignment.center,
    child: homepage()
    ),
  Container(
      alignment: Alignment.center,
      child: Text("Fab food comming soon")
  ),
  Container(
      alignment: Alignment.center,
      child: Text("Add to cart list comming soon")
  ),
  Container(
      alignment: Alignment.center,
      child: Text("Your log in id wiil comming soon")
  ),



];