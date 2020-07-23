import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'products.dart';

class DetailScreen extends StatefulWidget {
  final cameraImage;

  const DetailScreen({Key key, this.cameraImage}) : super(key: key);

  // const DetailScreen({Key key, this.cameraImage}) : super(key: key);

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
//      final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          DecoratedBox(
              decoration: BoxDecoration(
            color: Colors.pink[50],
          )),
          Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 60.0, left: 10),
                  child: Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Center(
                          child: Icon(
                            Icons.close,
                            color: Colors.black,
                            size: 25,
                          ),
                        ),
                      )),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 90.0, right: 50),
                    child: Image.asset(widget.cameraImage),
                  ),
                ),
              ],
            ),
          ),
          Stack(
            children: [
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  height: 320,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25.0),
                      topRight: Radius.circular(25.0),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
