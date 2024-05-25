import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shaghalni/core/widgets/app_drop_down_button.dart';
import 'package:shaghalni/features/auth/signup/logic/cubit/signup_cubit.dart';
import 'package:shaghalni/features/auth/signup/ui/widgets/profile_picture_widget.dart';
import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theming/app_text_styles.dart';
import '../../../../../core/widgets/app_text_form_field.dart';

class SignupForm extends StatefulWidget {
  const SignupForm({super.key});

  @override
  State<SignupForm> createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {


  late TextEditingController dateController;

  @override
  void initState() {
    dateController = context.read<SignupCubit>().dateController;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
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
          AppTextFormField(hintText: "FullName", validator: (value) {}),
          verticalSpace(20),
          Text(
            "City",
            style: TextStyles.font18BoldBlack,
          ),
          verticalSpace(10),
          AppTextFormField(hintText: "City", validator: (value) {}),
          verticalSpace(20),
          Text(
            "Birth Date",
            style: TextStyles.font18BoldBlack,
          ),
          verticalSpace(10),
          AppTextFormField(
            controller: dateController,
            hintText: "Birth Date",
            validator: (value) {},
            readOnly: true,
            suffixIcon: IconButton(
                onPressed: () {
                  context.read<SignupCubit>().myShowDatePicker(context);
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
  }
}
