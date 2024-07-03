import 'package:flutter/material.dart';
import 'package:shaghalni/features/blog/ui/widgets/blog_item_widget.dart';

import '../../../../core/data/models/blog_model.dart';

class BlogListView extends StatelessWidget {
  final List<BlogModel> blogList;
  const BlogListView({
    super.key, required this.blogList,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: blogList.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return BlogItemWidget(blogModel : blogList[index]);
        });
  }
}

