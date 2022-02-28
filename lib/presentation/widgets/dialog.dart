import 'package:clean/helper/global_context.dart';
import 'package:clean/presentation/providers/todo_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Future<void> showCupertinoDialog({
  required int id,
  required String title,
  required TodoNotifier notifier,
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
              'GET',
              style: TextStyle(
                color: Colors.blue,
              ),
            ),
            onPressed: () async {
              await notifier.getTodo(id: id);
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
