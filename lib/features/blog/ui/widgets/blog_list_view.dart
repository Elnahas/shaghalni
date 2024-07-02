import 'package:flutter/material.dart';
import 'package:shaghalni/features/blog/ui/widgets/blog_item_widget.dart';

class BlogListView extends StatelessWidget {
  const BlogListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 10,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return BlogItemWidget();
        });
  }
}

