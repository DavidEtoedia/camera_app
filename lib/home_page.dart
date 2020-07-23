import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

// Custome Widget import
import 'AppBg.dart';
import 'ScrollButton.dart';
import 'badge_widget.dart';

// Starting of the Home Page class
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

// Extended Widget for the HomePage Class. Where all the build goes on
class _HomePageState extends State<HomePage> {
  // TextEditing Controllers for Page View

  final controller = PageController(viewportFraction: 0.8);
// Counter Variable
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: <Widget>[
        // AppBg(),
        ListView(
          children: <Widget>[
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Icon(Icons.more_vert, color: Colors.black, size: 30),
                ),
                Badge(
                  position: BadgePosition.topRight(top: 0, right: 3),
                  animationDuration: Duration(milliseconds: 300),
                  animationType: BadgeAnimationType.slide,
                  badgeContent: Text(
                    "$counter",
                    style: TextStyle(color: Colors.white),
                  ),
                  child: IconButton(
                      icon: Icon(Icons.shopping_cart), onPressed: () {}),
                )
              ],
            ),

            Container(
              color: Colors.transparent,
              child: Padding(
                padding: const EdgeInsets.only(left: 30.0, top: 40.0),
                child: RichText(
                    text: TextSpan(children: [
                  TextSpan(
                    text: 'Hello there',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 30.0,
                        fontWeight: FontWeight.w800,
                        color: Colors.black),
                  ),
                  TextSpan(text: '\n'),
                  TextSpan(
                    text: 'Looking for amazing cameras?',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 20.0,
                        fontWeight: FontWeight.w200,
                        color: Colors.black),
                  ),
                ])),
              ),
            ),

            SizedBox(height: 20),

            // ScrollButton(controller),

            SizedBox(height: 25), // SizedBox
          ],
        ),
      ]),
    );
  }
}
