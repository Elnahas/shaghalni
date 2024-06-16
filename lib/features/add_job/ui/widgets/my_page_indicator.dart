import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MyPageIndicator extends StatefulWidget {
  final PageController myController;

  MyPageIndicator(this.myController);

  @override
  _MyPageIndicatorState createState() => _MyPageIndicatorState();
}

class _MyPageIndicatorState extends State<MyPageIndicator> {
  int currentPage = 0;

  @override
  void initState() {
    super.initState();
    widget.myController.addListener(_onPageChanged);
  }

  void _onPageChanged() {
    final page = widget.myController.page!.round();
    if (page != currentPage) {
      setState(() {
        currentPage = page;
      });
    }
  }

  @override
  void dispose() {
    widget.myController.removeListener(_onPageChanged);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: widget.myController,
      count: 3,
      axisDirection: Axis.horizontal,
      effect: CustomizableEffect(
        spacing: 10.0,
        activeDotDecoration: DotDecoration(
          width: 100.0,
          height: 12.0,
          color: Colors.indigo,
          borderRadius: BorderRadius.circular(4.0),
        ),
        dotDecoration: DotDecoration(
          width: 100.0,
          height: 12.0,
          color: Colors.grey[300]!,
          borderRadius: BorderRadius.circular(4.0),
        ),
        inActiveColorOverride: (index) {
          return index <= currentPage ? Colors.indigo : Colors.grey[300]!;
        }
      ),
    );
  }
}
