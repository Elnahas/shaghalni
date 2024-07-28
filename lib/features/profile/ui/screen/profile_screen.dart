import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shaghalni/core/helpers/extentions.dart';
import 'package:shaghalni/core/theming/app_text_styles.dart';
import 'package:shaghalni/features/profile/logic/profile_cubit.dart';
import 'package:shaghalni/features/profile/logic/profile_state.dart';
import 'package:shaghalni/features/profile/ui/widgets/profile_button.dart';
import 'package:shaghalni/generated/l10n.dart';
import '../../../../core/functions/show_snack_bar.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../auth/signup/ui/widgets/shimmer_signup_widget.dart';
import '../widgets/profile_form.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
    late ProfileCubit _cubit;
  @override
  void initState() {
    _cubit = context.read<ProfileCubit>();
    _cubit.getCity();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 14.h),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: BlocConsumer<ProfileCubit, ProfileState>(
            listenWhen: (previous, current) =>
                current is ProfileSuccess || current is ProfileFailure,
            listener: (context, state) {
              state.whenOrNull(
                profileSuccess: () {
                  context.pop();
                },
                profileFailure: (error) {
                  Navigator.of(context).pop();
                  showSnackBar(context, error);
                },
              );
            },
            builder: (context, state) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                        Text(
              S.of(context).account_settings,
              style: AppTextStyles.font24BoldBlack,
            ),

                  verticalSpace(30),
                  state is CityLoading
                      ? const SingleChildScrollView(
                          child: ShimmerSignupWidget())
                      : const ProfileForm(),
                  verticalSpace(20),
                  ProfileButton()
                ],
              );
            },
          ),
        ),
        
      ),
    );
  }
}
