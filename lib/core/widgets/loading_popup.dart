import 'package:flutter/material.dart';

class LoadingPopup extends StatelessWidget {
  const LoadingPopup({
    Key? key,
    required this.message,
    this.dismiss = true,
  }) : super(key: key);

  final String message;
  final bool dismiss;

  show(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: dismiss,
      builder: (context) => AlertDialog(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        content: this,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 10,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(
              color: Theme.of(context).iconTheme.color,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(message),
          ],
        ),
      ),
    );
  }
}
