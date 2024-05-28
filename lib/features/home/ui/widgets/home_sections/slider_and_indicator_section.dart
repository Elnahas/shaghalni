import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../../core/functions/image_viewer.dart';
import '../../../../../core/helpers/spacing.dart';
import '../../../data/model/slide_model.dart';

class SliderAndIndicatorSection extends StatefulWidget {
  const SliderAndIndicatorSection({super.key});

  @override
  State<SliderAndIndicatorSection> createState() => _SliderAndIndicatorSectionState();
}

class _SliderAndIndicatorSectionState extends State<SliderAndIndicatorSection> {

    late CarouselController carouselController;

  int currentIndex = 0;

  @override
  void initState() {
    carouselController = CarouselController();

    super.initState();
  }

  
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [

                CarouselSlider(
          carouselController: carouselController,
          options: CarouselOptions(
            height: 200.h,
            aspectRatio: 16 / 9,
            viewportFraction: 0.9,
            initialPage: currentIndex,
            enableInfiniteScroll: true,
            reverse: false,
            autoPlay: false,
            autoPlayInterval:const Duration(seconds: 3),
            autoPlayAnimationDuration:const Duration(milliseconds: 800),
            autoPlayCurve: Curves.decelerate,
            enlargeCenterPage: true,
            enlargeFactor: 0.6,
            onPageChanged: (index, reason) {
              setState(() {
                currentIndex = index;
              });
            },
            scrollDirection: Axis.horizontal,
          ),
          items: onBoardingData.map((slideModel) {
            return Builder(
              builder: (BuildContext context) {
                return CustomImageViewer.show(
                  context: context,
                  url: slideModel.imagePath,
                  fit: BoxFit.fill,
                  radius: 12);
              },
            );
          }).toList(),
        ),
        verticalSpace(20),

        // Indicators
        AnimatedSmoothIndicator(
            activeIndex: currentIndex,
            count: onBoardingData.length,
            axisDirection: Axis.horizontal,
            effect: const ExpandingDotsEffect(radius: 4 , dotWidth: 18, dotHeight: 12),
            onDotClicked: (index) {
              setState(() {
                currentIndex = index;
                carouselController.animateToPage(index,
                    duration: const Duration(milliseconds: 300), curve: Curves.ease);
              });
            })
      ]
    );
  }
}