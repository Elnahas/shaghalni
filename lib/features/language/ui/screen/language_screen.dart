import 'package:flutter/material.dart';

class LanguageScreen extends StatelessWidget {
  const LanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text('Select Language'),
            Container(
              child: Column(children: [
                Image.asset('assets/icons/flag_ar.png'),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
