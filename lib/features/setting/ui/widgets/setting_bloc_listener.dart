import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shaghalni/core/helpers/extentions.dart';
import 'package:shaghalni/features/setting/logic/setting_cubit.dart';

import '../../../../core/functions/show_progress_indicator.dart';
import '../../../../core/functions/show_snack_bar.dart';
import '../../../../core/routing/routes.dart';
import '../../logic/setting_state.dart';

class SettingBlocListener extends StatelessWidget {
  const SettingBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return   BlocListener<SettingCubit, SettingState>(
                listenWhen: (previous, current) =>
                    current is LogOutLoading ||
                    current is LogOutSuccess ||
                    current is LogOutFailure,
                listener: (context, state) {
                  state.maybeMap(
                      orElse: () {},
                      logOutFailure: (value) {
                        Navigator.of(context).pop();
                        showSnackBar(context, value.error);
                      },
                      logOutLoading: (value) {
                        showProgressIndicator(context);
                      },
                      logOutSuccess: (_) {
                        Navigator.of(context).pop();
                        context.pushNamedAndRemoveUntil(Routes.login,
                            predicate: (route) => false);
                      });
                },
                child: SizedBox.shrink(),
              );
  }
}