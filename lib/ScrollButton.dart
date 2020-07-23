import 'package:flutter/material.dart';
import 'package:badges/badges.dart';

class ScrollButton extends StatefulWidget {
  final Widget button;
  ScrollButton(
    PageController controller,
    this.button,
  );

  @override
  _ScrollButtonState createState() => _ScrollButtonState();
}

class _ScrollButtonState extends State<ScrollButton> {
  bool showRaisedButtonBadge = true;

  PageController _pageController;

  // @override
  // void dispose() {
  //   super.dispose();
  //   _pageController.dispose();
  // }

  // @override
  // void initState() {
  //   super.initState();
  //   _pageController = PageController(
  //     viewportFraction: 0.7,
  //   );
  //   // ignore: unnecessary_statements
  //   _pageController.addListener(changeSelector);
  //   setState(() {
  //     selectedSlide = allSlide[0];
  //     selectedSlide['selected'] = true;
  //   });
  // }

  // changeSelector() {
  //   var maxScrollVal = _pageController.position.maxScrollExtent;

  //   var divisor = (maxScrollVal / allSlide.length) + 50;

  //   var scrollValue = _pageController.offset.round();
  //   var slideValue = (scrollValue / divisor).round();

  //   var currentSlide = allSlide.indexWhere((slide) => slide['selected']);

  //   setState(() {
  //     allSlide[currentSlide]['selected'] = false;
  //     selectedSlide = allSlide[slideValue];
  //     selectedSlide['selected'] = true;
  //   });
  // }

  // var selectedSlide;
  // var allSlide;

//  final controller = PageController(viewportFraction: 0.8);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        // tag_list(allSlide: allSlide),
        Padding(
          padding: EdgeInsets.only(top: 30, bottom: 10.0),
          child: Center(
            child: Column(
              children: <Widget>[
                // PageIndicator(pageController: _pageController),
                SizedBox(),
              ],
            ),
          ),
        ),
      ],
    );
  }

// Notification Badge

// ignore: non_constant_identifier_names
  Widget badge_widget({@required int counter}) {
    return Badge(
      position: BadgePosition.topRight(top: 0, right: 3),
      animationDuration: Duration(milliseconds: 300),
      animationType: BadgeAnimationType.slide,
      badgeContent: Text(
        counter.toString(),
        style: TextStyle(color: Colors.white),
      ),
      child: IconButton(icon: Icon(Icons.shopping_cart), onPressed: () {}),
    );
  }
}
