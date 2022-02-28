import 'package:clean/helper/global_context.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Future<void> showCupertinoDialog({
  required String title,
}) async {
  await showDialog(
    context: globalContext,
    builder: (context) {
      return CupertinoAlertDialog(
        title: Text(title),
        content: const Text('content'),
        actions: [
          CupertinoDialogAction(
            isDestructiveAction: true,
            child: const Text(
              'yes',
              style: TextStyle(
                color: Colors.blue,
              ),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          CupertinoDialogAction(
            isDestructiveAction: true,
            child: const Text('close'),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      );
    },
  );
}
