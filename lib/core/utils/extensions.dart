import 'package:flutter/material.dart';

extension BuildContextExtensions on BuildContext {
  void displaySuccessSnackbar({required String message}) {
    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        content: Text(
          message,
          style: const TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.green,
      ),
    );
  }

  void displayErrorSnackbar({required String message}) {
    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        content: Text(
          message,
          style: const TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.red,
      ),
    );
  }

  void displayOfflineSnackbar() {
    displayErrorSnackbar(
      message: 'Offline',
    );
  }
}
