import 'package:flutter/material.dart';
import 'package:myepp/page_indicator.dart';
import 'package:myepp/products.dart';
import 'package:myepp/tag_list_item.dart';

import '../AppBg.dart';
import '../badge_widget.dart';
import 'const_text_widget.dart';

// Starting of the class
class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

//  Extended class where all build goes on
class _HomeViewState extends State<HomeView> {
  int counter = 0;
  final controller = PageController(viewportFraction: 0.8);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: <Widget>[
      AppBg(),
      // tag_list(allSlide: allSlide),
      ListView(
        children: <Widget>[
          SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Icon(Icons.more_vert, color: Colors.black, size: 30),
                badge_widget(counter: counter)
              ],
            ),
          ),
          welcomeText(),
          SizedBox(
            height: 10,
          ),

// The tag list is the red button

          tag_list(),
          // tag_list(),
          SizedBox(
            height: 20,
          ),

// The page view item are the products can be found in products.dart
          Page_View_Item(pageController: controller),
          Center(
            child: PageIndicator(pageController: controller),
          ),
          // ScrollButton(controller, cartButton(counter)),
        ],
      ),
    ]));
  }

// I already included included the Add to cart button which is the const_button.dart
// const_button is used in products.dart file

  InkWell cartButton(int counter) {
    return InkWell(
      onTap: () {
        setState(() {
          counter++;
        });

        print(counter);
      },
      child: Container(
        height: 50,
        width: 150,
        decoration: BoxDecoration(
            color: Colors.yellow, borderRadius: BorderRadius.circular(25)),
        child: Center(
          child: Text(
            'Add to Cart',
            style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 15,
                fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }
}
