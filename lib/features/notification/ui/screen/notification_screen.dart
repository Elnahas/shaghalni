import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Notification"),
        centerTitle: true,
      ),
      body: Center(
        child: Text("Notification"),
      ),
    );
  }
}
