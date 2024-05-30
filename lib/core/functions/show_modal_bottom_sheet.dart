import 'package:flutter/material.dart';
import 'package:shaghalni/core/helpers/spacing.dart';

Future<bool> onWillPop(BuildContext context, String title) async {
  return await showModalBottomSheet<bool>(
        context: context,
        builder: (BuildContext context) {
          return Container(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(title, style: const TextStyle(fontSize: 18.0)),
                verticalSpace(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    TextButton(
                      child: const Text('Cancel'),
                      onPressed: () {
                        Navigator.of(context).pop(
                            false); // Return false to indicate that the pop should be canceled
                      },
                    ),
                    ElevatedButton(
                      child: const Text('Exit'),
                      onPressed: () {
                        Navigator.of(context).pop(true);
                        Navigator.of(context).pop(true);
                      },
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ) ??
      false; // Return false if the bottom sheet is dismissed by tapping outside
}
