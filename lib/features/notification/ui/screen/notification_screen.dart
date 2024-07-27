import 'package:flutter/material.dart';

import '../../../../generated/l10n.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(S.of(context).notification),
        centerTitle: true,
      ),
      body: Center(
        child: Text("Notification"),
      ),
    );
  }
}
