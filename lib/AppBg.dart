import 'package:flutter/material.dart';

class AppBg extends StatefulWidget {
  @override
  _AppBgState createState() => _AppBgState();
}

class _AppBgState extends State<AppBg> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraint) {
        final height = constraint.maxHeight;
        final width = constraint.maxWidth;

        return Stack(
          children: <Widget>[
            Container(color: Colors.white30),
            Positioned(
              left: -(height / 2 - width / 2),
              bottom: height * 0.10,
              child: Container(
                height: height,
                width: height,
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Colors.grey[100]),
              ),
            ),
            Positioned(
              left: -(width / 15 - width / 3),
              bottom: height * 0.40,
              child: Container(
                height: width * 1.6,
                width: width * 1.6,
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Colors.grey[200]),
              ),
            ),
            Positioned(
              right: -width * 0.4,
              top: -width * 0.2,
              child: Container(
                height: width * 0.7,
                width: width * 0.7,
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Colors.white38),
              ),
            ),
          ],
        );
      },
    );
  }
}
