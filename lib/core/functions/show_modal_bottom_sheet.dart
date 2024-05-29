      import 'package:flutter/material.dart';

Future<bool> onWillPop(BuildContext context, String title ) async {
    return await showModalBottomSheet<bool>(
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(title, style: TextStyle(fontSize: 18.0)),
              SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  TextButton(
                    child: Text('Cancel'),
                    onPressed: () {
                      Navigator.of(context).pop(false); // Return false to indicate that the pop should be canceled
                    },
                  ),
                  ElevatedButton(
                    child: Text('Exit'),
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
    ) ?? false; // Return false if the bottom sheet is dismissed by tapping outside
  }