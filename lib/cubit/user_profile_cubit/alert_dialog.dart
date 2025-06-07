import 'package:flutter/material.dart';

class DeleteAccountAlert extends StatelessWidget {
  final VoidCallback onConfirm;

  const DeleteAccountAlert({
    required this.onConfirm,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text(
        'Delete Account',
      ),
      content: const Text(
        'Are you sure you want to delete your account?',
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text(
            'Cancel',
          ),
        ),
        TextButton(
          onPressed: () {
            onConfirm();
            Navigator.of(context).pop();
          },
          child: const Text(
            'Confirm',
          ),
        ),
      ],
    );
  }
}
