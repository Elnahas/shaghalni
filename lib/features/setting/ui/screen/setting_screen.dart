import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shaghalni/core/helpers/extentions.dart';
import 'package:shaghalni/core/helpers/spacing.dart';
import 'package:shaghalni/core/theming/app_text_styles.dart';
import 'package:shaghalni/features/setting/data/setting_data.dart';
import 'package:shaghalni/features/setting/logic/setting_state.dart';
import 'package:shaghalni/features/setting/ui/widgets/settings_list_view.dart';
import '../../../../core/functions/show_progress_indicator.dart';
import '../../../../core/functions/show_snack_bar.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/theming/app_colors.dart';
import '../../logic/setting_cubit.dart';
import '../widgets/user_profile_row.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const UserProfileRow(),
              verticalSpace(30),
              SettingsListView(
                title: "Setting",
                items: settingsItems,
              ),
              verticalSpace(20),
              SettingsListView(
                title: "Others",
                items: otherItems,
              ),
              verticalSpace(30),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.primaryColor.withOpacity(0.1),
                      spreadRadius: 1,
                      blurRadius: 8,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: ListTile(
                    title: Text(
                      "Log Out",
                      style: AppTextStyles.font15NormalRed,
                    ),
                    onTap: () {
                      context.read<SettingCubit>().logout();
                    },
                    leading: Icon(
                      FontAwesomeIcons.arrowRightFromBracket,
                      color: Colors.red,
                    )),
              ),
              BlocListener<SettingCubit, SettingState>(
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
