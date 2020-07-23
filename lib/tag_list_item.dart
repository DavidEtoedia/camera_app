import 'package:flutter/material.dart';

import 'tag_button.dart';

// ignore: camel_case_types
class tag_list extends StatelessWidget {
  List allSlide = [
    {'slideName': 'David'},
    {'slideName': 'Lorem'},
    {'slideName': 'Classic'},
    {'slideName': 'Modern'},
  ];

  // tag_list({
  //   Key key,
  //   @required this.allSlide,
  // }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(color: Colors.transparent),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,

        // the TagButton is the red button

        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: allSlide.map((element) {
            return TagButton(slide: element);
          }).toList(),
          // children: <Widget>[product_tag()],
        ),
      ),
    );
  }
}
