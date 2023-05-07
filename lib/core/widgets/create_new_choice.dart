import 'package:flutter/material.dart';
import 'package:marketplace_client_app/core/widgets/custom_text_field.dart';

import 'category_drop_down.dart';

class CreateNewChoice extends StatelessWidget {
  const CreateNewChoice({
    Key? key,
    required this.message,
    required this.title,
    this.dismiss = true,
    required this.onPressed,
    required this.onEdit,
  }) : super(key: key);

  final String message;
  final String title;
  final bool dismiss;
  final Function() onPressed;
  final Function(String) onEdit;

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
      height: 340,
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 10,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            Text(title, style: Theme.of(context).textTheme.headline6!),
            const SizedBox(
              height: 23,
            ),
            Text(
              message,
              style: const TextStyle(fontSize: 12),
            ),
            const SizedBox(
              height: 16,
            ),
            CustomTextField(
              hint: 'title',
              onEdit: onEdit,
            ),
            const SizedBox(
              height: 23,
            ),
            Align(
              alignment: Alignment.center,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Theme.of(context).iconTheme.color),
                child: Text('Confirm'),
                onPressed: onPressed,
              ),
            )
          ],
        ),
      ),
    );
  }
}
