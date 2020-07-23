import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart';

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
