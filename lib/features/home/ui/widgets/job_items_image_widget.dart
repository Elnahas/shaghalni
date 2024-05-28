import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/widgets/custom_shimmer_image.dart';

class JobItemsImageWidget extends StatelessWidget {
  const JobItemsImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return   CachedNetworkImage(
      imageUrl:
          "https://media.licdn.com/dms/image/sync/D4D27AQHKXlRcxlsPbw/articleshare-shrink_800/0/1711275137389?e=2147483647&v=beta&t=n9CUzhIXlT141I20hUPNGDOFI6834lALs_K-h5bqlPw",
      imageBuilder: (context, imageProvider) {
        return Container(
          width: double.infinity,
          height: 150.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(18.r),
                topRight: Radius.circular(18.r)),
            image: DecorationImage(
              image: imageProvider,
              fit: BoxFit.cover,
            ),
          ),
        );
      },
      placeholder: (context, url) {
        return CustomShimmerImage(
            height: 150,
            width: MediaQuery.of(context).size.width,
            borderRadius: 12);
      },
    );
  }
}