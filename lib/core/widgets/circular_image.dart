import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class CircularImage extends StatelessWidget {
  final String imageUrl;
  final double radius;
  final Color backgroundColor;
  final Widget errorWidget;


  CircularImage({
    required this.imageUrl,
    this.radius = 20.0,
    this.errorWidget = const Icon(Icons.error),
    this.backgroundColor = Colors.grey,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      backgroundColor: backgroundColor,
      child: ClipOval(
        child: CachedNetworkImage(
          imageUrl: imageUrl,
          fit: BoxFit.cover,
          height: radius * 2,
          width: radius * 2,
          placeholder: (context, url) => Shimmer.fromColors(
            baseColor: Colors.grey[300]!,
            highlightColor: Colors.grey[100]!,
            child: Container(
              color: Colors.grey,
              height: radius * 2,
              width: radius * 2,
            ),
          ),
          errorWidget: (context, url, error) => errorWidget,
        ),
      ),
    );
  }
}