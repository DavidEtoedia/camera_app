import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PageIndicator extends StatelessWidget {
  const PageIndicator({
    Key key,
    @required PageController pageController,
  })  : _pageController = pageController,
        super(key: key);

  final PageController _pageController;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(top: 15, bottom: 4),
        child: SmoothPageIndicator(
          controller: _pageController,
          count: 4,
          effect: WormEffect(
            dotHeight: 7,
            dotWidth: 7,
            radius: 7,
          ),
        ),
      ),
    );
  }
}
