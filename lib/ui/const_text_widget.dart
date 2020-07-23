import 'package:flutter/material.dart';

Widget welcomeText() => Container(
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
    );
