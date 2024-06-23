
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../core/widgets/app_text_form_field.dart';
import '../../logic/jobs_list_cubit.dart';

class TopBarSearch extends StatefulWidget {
  const TopBarSearch({
    super.key,
  });

  @override
  State<TopBarSearch> createState() => _TopBarSearchState();
}

class _TopBarSearchState extends State<TopBarSearch> {
  late final TextEditingController searchTextEditingController;
  late JobsListCubit _cubit;
  @override
  void initState() {
    _cubit = context.read<JobsListCubit>();
    searchTextEditingController = _cubit.searchTextEditingController ;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: AppTextFormField(
            controller: searchTextEditingController,
            hintText: "Search by title job",
            validator: (value) {},
            prefixIcon: Icon(FontAwesomeIcons.magnifyingGlass),
            suffixIcon: TextButton(child: Text("Search"), onPressed: () {
              print("searchTextEditingController.text ${searchTextEditingController.text}");
              context.read<JobsListCubit>().getJobsByCategory();
            }),
          ),
        ),
        IconButton(onPressed: () {}, icon: Icon(FontAwesomeIcons.sort)),
        IconButton(onPressed: () {}, icon: Icon(FontAwesomeIcons.filter)),
      ],
    );
  }
}
