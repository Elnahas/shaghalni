import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shaghalni/core/widgets/app_drop_down_button.dart';
import 'package:shaghalni/features/auth/signup/ui/widgets/profile_widgets.dart';
import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theming/app_text_styles.dart';
import '../../../../../core/widgets/app_text_form_field.dart';
import '../../../login/logic/cubit/phone_auth_cubit.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ProfileWidget(),
        verticalSpace(20),
        Text(
          "Phone Number",
          style: TextStyles.font18BoldBlack,
        ),
        verticalSpace(10),
        AppTextFormField(
            readOnly: true,
            hintText: context.read<PhoneAuthCubit>().phoneNumber,
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
          hintText: "Birth Date",
          validator: (value) {},
          readOnly: true,
          suffixIcon: IconButton(
              onPressed: () {}, icon: const Icon(Icons.calendar_month)),
        ),
        verticalSpace(20),
        Text(
          "Select Gender",
          style: TextStyles.font18BoldBlack,
        ),
        verticalSpace(10),
        const AppDropDownButton(),
      ],
    );
  }
}

