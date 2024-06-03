import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shaghalni/core/widgets/app_drop_down_button.dart';
import 'package:shaghalni/features/auth/signup/logic/cubit/signup_cubit.dart';
import 'package:shaghalni/features/auth/signup/logic/cubit/signup_state.dart';
import 'package:shaghalni/features/auth/signup/ui/widgets/profile_picture_widget.dart';
import 'package:shaghalni/features/auth/signup/ui/widgets/shimmer_signup_widget.dart';
import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theming/app_text_styles.dart';
import '../../../../../core/widgets/app_text_form_field.dart';
import '../../../../../core/widgets/select_list_widget.dart';
import '../../../../../core/widgets/shimmer_list_widget.dart';

class SignupForm extends StatefulWidget {
  const SignupForm({super.key});

  @override
  State<SignupForm> createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  late TextEditingController birthDateController;
  late TextEditingController fullNameController;
  late TextEditingController cityController;

  late final SignupCubit _cubit;

  @override
  void initState() {
    _cubit = context.read<SignupCubit>();
    birthDateController = _cubit.birthDateController;
    fullNameController = _cubit.fullNameController;
    cityController = _cubit.cityController;

    _cubit.getCity();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignupCubit, SignupState>(
      builder: (context, state) {
        return state is CityLoading
            ? const SingleChildScrollView(child: ShimmerSignupWidget())
            : Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const ProfilePicture(),
                    verticalSpace(20),
                    Text(
                      "Phone Number",
                      style: TextStyles.font18BoldBlack,
                    ),
                    verticalSpace(10),
                    AppTextFormField(
                        readOnly: true,
                        hintText: context.read<SignupCubit>().phoneNumber,
                        validator: (value) {}),
                    verticalSpace(20),
                    Text(
                      "Full Name",
                      style: TextStyles.font18BoldBlack,
                    ),
                    verticalSpace(10),
                    AppTextFormField(
                        controller: fullNameController,
                        hintText: "FullName",
                        validator: (value) {}),
                    verticalSpace(20),
                    Text(
                      "City",
                      style: TextStyles.font18BoldBlack,
                    ),
                    verticalSpace(10),
                    AppTextFormField(
                        suffixIcon: const Icon(Icons.arrow_drop_down),
                        readOnly: true,
                        onTap: () {
                          showModalBottomSheet(
                            context: context,
                            builder: (context) {
                              return Container(
                                  padding: const EdgeInsets.all(14),
                                  child: SelectListWidget(
                                    items: _cubit.cityList,
                                    title: "Select City",
                                    onItemSelected: (value) {
                                      cityController.text = _cubit.cityList[value].name;
                                      _cubit.selectedCityIndex = value;
                                      Navigator.of(context).pop();
                                    },
                                    initialSelectedIndex: _cubit.selectedCityIndex,
                                    itemBuilder: (city) {
                                      return city.name;
                                    },
                                  ));
                            },
                          );
                        },
                        controller: cityController,
                        hintText: "City",
                        validator: (value) {}),
                    verticalSpace(20),
                    Text(
                      "Birth Date",
                      style: TextStyles.font18BoldBlack,
                    ),
                    verticalSpace(10),
                    AppTextFormField(
                      controller: birthDateController,
                      hintText: "Birth Date",
                      validator: (value) {},
                      readOnly: true,
                      suffixIcon: IconButton(
                          onPressed: () {
                            context
                                .read<SignupCubit>()
                                .myShowDatePicker(context);
                          },
                          icon: const Icon(Icons.calendar_month)),
                    ),
                    verticalSpace(20),
                    Text(
                      "Select Gender",
                      style: TextStyles.font18BoldBlack,
                    ),
                    verticalSpace(10),
                    const AppDropDownButton(),
                  ],
                ),
              );
      },
    );
  }
}
