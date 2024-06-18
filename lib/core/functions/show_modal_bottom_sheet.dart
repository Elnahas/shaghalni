import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:shaghalni/core/helpers/extentions.dart';
import 'package:shaghalni/core/routing/routes.dart';

 onWillPop(BuildContext context, String title)  {

 return AwesomeDialog(
            context: context,
            dialogType: DialogType.info,
            title: 'Confirm Exit',
            desc: 'Are you sure you want to leave this page without publishing the ad?',
            btnCancelOnPress: () {},
            btnOkOnPress: () {
              context.pushNamedAndRemoveUntil(Routes.home, predicate: (Route<dynamic> route) => false);
            },
            )..show();

}
