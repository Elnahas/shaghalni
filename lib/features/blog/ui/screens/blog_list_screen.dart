import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shaghalni/core/theming/app_text_styles.dart';
import 'package:shaghalni/core/data/models/blog_model.dart';
import 'package:shaghalni/features/blog/logic/blog_list/blog_list_cubit.dart';
import 'package:shaghalni/features/blog/logic/blog_list/blog_list_state.dart';
import 'package:shaghalni/features/jobs_list/ui/widgets/jobs_shimmer_loading.dart';
import '../widgets/blog_list_view.dart';

class BlogListScreen extends StatelessWidget {
  const BlogListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Blog',
          style: AppTextStyles.font18BoldBlack,
        ),
        centerTitle: true,
      ),
      body: Container(
        child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: BlocBuilder<BlogListCubit, BlogListState>(
              buildWhen: (previous, current) =>
                  current is BlogListSuccess ||
                  current is BlogListFailure ||
                  current is BlogListLoading,
              builder: (context, state) {
                return state.maybeWhen(
                  blogListLoading: () => setupLoading(),
                  blogListSuccess: (blogList) => setupSuccess(blogList),
                  blogListFailure: (error) => setupError(error),
                  orElse: () => SizedBox.shrink(),
                );
              },
            )),
      ),
    );
  }
}

setupError(String error) {
  return Text(error);
}

setupSuccess(List<BlogModel> blogList) {
  return BlogListView(blogList: blogList);
}

setupLoading() {
  return Padding(
    padding: const EdgeInsets.all(20),
    child: JobsShimmerLoading(),
  );
}
