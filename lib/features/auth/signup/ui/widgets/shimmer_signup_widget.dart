import 'package:flutter/material.dart';
import 'package:shaghalni/core/helpers/spacing.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerSignupWidget extends StatelessWidget {
  const ShimmerSignupWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 50,
          child: Shimmer.fromColors(
            baseColor: Colors.grey[300]!,
            highlightColor: Colors.grey[100]!,
            child: Container(
              width: 100.0,
              height: 100.0,
              decoration:const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle, 
              ),
            ),
          ),
        ),
        verticalSpace(20),
        ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: 10,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Shimmer.fromColors(
                baseColor: Colors.grey[300]!,
                highlightColor: Colors.grey[100]!,
                child: Container(
                  width: double.infinity,
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}