import 'package:flutter/material.dart';

class const_button extends StatelessWidget {
  const const_button({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
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
