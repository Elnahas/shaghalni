import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shaghalni/features/auth/signup/logic/cubit/signup_cubit.dart';

import '../../../../../core/theming/app_text_styles.dart';
import '../../../../../generated/l10n.dart';
import '../../logic/cubit/signup_state.dart';

class AgreementTermsWidget extends StatelessWidget {
  const AgreementTermsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final SignupCubit cubit = context.read<SignupCubit>();

    return BlocBuilder<SignupCubit, SignupState>(
      buildWhen: (previous, current) => current is AgreementState,
      builder: (context, state) {
        return CheckboxListTile(
          value: cubit.isAgreed,
          onChanged: (value) {
            cubit.setAgreement(value!);
          },
          title: Text(
            S.of(context).agree_terms_conditions,
            style: AppTextStyles.font15Dark60Regular,
          ),
        );
      },
    );
  }
}