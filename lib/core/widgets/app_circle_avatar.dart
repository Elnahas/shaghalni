import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class AppCircleAvatar extends StatelessWidget {
  final String imageUrl;
  final double radius;
  final Color backgroundColor;
  final Widget errorWidget;


  AppCircleAvatar({
    required this.imageUrl,
    this.radius = 20,
    this.errorWidget = const Icon(Icons.error),
    this.backgroundColor = Colors.grey,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius.r,
      backgroundColor: backgroundColor,
      child: ClipOval(
        child: CachedNetworkImage(
          imageUrl: imageUrl,
          fit: BoxFit.cover,
          height: (radius * 2).h,
          width: (radius * 2).w,
          placeholder: (context, url) => Shimmer.fromColors(
            baseColor: Colors.grey[300]!,
            highlightColor: Colors.grey[100]!,
            child: Container(
              color: Colors.grey,
              height: (radius * 2).h,
              width: (radius * 2).w,
            ),
          ),
          errorWidget: (context, url, error) => errorWidget,
        ),
      ),
    );
  }
}