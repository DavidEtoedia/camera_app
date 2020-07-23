import 'package:flutter/material.dart';

class TagButton extends StatelessWidget {
  const TagButton({
    Key key,
    @required this.slide,
  }) : super(key: key);

  final slide;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 6.0, right: 6.0, top: 5.0, bottom: 5.0),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        curve: Curves.easeIn,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25.0),
          border: Border.all(width: 2, color: Colors.white),
          color: Colors.redAccent,
          // color: productName['selected'] ? Colors.black : Colors.white70,
        ),
        height: 40.0,
        width: 91.0,
        child: InkWell(
          onTap: () {
            // scrollToSlide(productName);
            //            selectedProduct(productName);
          },
          child: Center(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              child: Text(
                slide['slideName'],
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 17.0,
                  color: Colors.white,
                  // productName['selected'] ? Colors.white : Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
