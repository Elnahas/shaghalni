import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:shaghalni/core/theming/app_colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BottomSection extends StatefulWidget {
  final PageController controller;
  final bool isLastScreen;
  const BottomSection({
    super.key,
    required this.controller,
    required this.isLastScreen,
  });

  @override
  State<BottomSection> createState() => _BottomSectionState();
}

class _BottomSectionState extends State<BottomSection> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SmoothPageIndicator(controller: widget.controller, count: 4),
          const SizedBox(
            height: 10,
          ),
          CircularPercentIndicator(
            radius: 40,
            animation: true,
            animationDuration: 300,
            percent: widget.isLastScreen ? 1 : 0.5,
            animateFromLastPercent: true,
            progressColor: ColorsManager.primaryColor,
            center: CircleAvatar(
              radius: 30,
              backgroundColor: ColorsManager.primaryColor,
              child: IconButton(
                  onPressed: () {
                    widget.isLastScreen
                        ? Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>  Container(),
                            ))
                        : widget.controller.nextPage(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.ease);
                  },
                  icon: Icon(
                    widget.isLastScreen
                        ? Icons.check
                        : Icons.keyboard_arrow_right,
                    size: 30,
                    color: Colors.white,
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
