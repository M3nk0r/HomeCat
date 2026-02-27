import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class ConfirmDialog extends StatelessWidget {
  final String message;
  const ConfirmDialog({this.message = 'Confirm', super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(message),
      actions: [
        TextButton(
          onPressed: () {
            context.router.pop(false);
          },
          child: Text('No'),
        ),
        TextButton(
          onPressed: () {
            context.router.pop(true);
          },
          child: Text('Yes'),
        ),
      ],
    );
  }
}
