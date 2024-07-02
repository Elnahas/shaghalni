import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shaghalni/core/theming/app_text_styles.dart';
import 'package:shaghalni/features/blog/data/model/blog_model.dart';
import 'package:shaghalni/features/blog/logic/cubit/blog_cubit.dart';
import 'package:shaghalni/features/blog/logic/cubit/blog_state.dart';
import 'package:shaghalni/features/jobs_list/ui/widgets/jobs_shimmer_loading.dart';
import '../widgets/blog_list_view.dart';

class BlogScreen extends StatelessWidget {
  const BlogScreen({super.key});

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
            child: BlocBuilder<BlogCubit, BlogState>(
              buildWhen: (previous, current) =>
                  current is BlogSuccess ||
                  current is BlogFailure ||
                  current is BlogLoading,
              builder: (context, state) {
                return state.maybeWhen(
                  blogLoading: () => setupLoading(),
                  blogSuccess: (blogList) => setupSuccess(blogList),
                  blogFailure: (error) => setupError(error),
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
