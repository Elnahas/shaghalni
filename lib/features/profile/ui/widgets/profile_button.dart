import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shaghalni/features/profile/logic/profile_cubit.dart';
import 'package:shaghalni/features/profile/logic/profile_state.dart';

import '../../../../../core/functions/show_snack_bar.dart';
import '../../../../../core/widgets/app_text_button.dart';
import '../../../../../generated/l10n.dart';

class ProfileButton extends StatelessWidget {
  const ProfileButton({super.key});

  @override
  Widget build(BuildContext context) {
    final ProfileCubit cubit = context.read<ProfileCubit>();

    return AppTextButton(
      isLoading: cubit.state is ProfileLoading,
      buttonText: S.of(context).save,
      onPressed: () {
        _validateUpdateProfile(context);
      },
    );
  }

  void _validateUpdateProfile(BuildContext context) async {
    final ProfileCubit cubit = context.read<ProfileCubit>();
    if (cubit.signupFormKey.currentState!.validate()) {
      if (cubit.selectedGender != null) {
          await cubit.updateUserProfile();
      } else {
        showSnackBar(context, S.of(context).pleaseSelectGender);
      }
    }
  }
}
