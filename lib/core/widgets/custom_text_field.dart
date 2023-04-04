import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextField extends StatefulWidget {
  final TextEditingController? controller;
  final Function(String) onEdit;
  final String hint;
  final String? value;
  final String? error;
  final bool displayError;

  CustomTextField({
    Key? key,
    required this.onEdit,
    this.error,
    this.displayError = false,
    required this.hint,
    this.value,
    this.controller,
  }) : super(key: key) {
    isPassword = false;
    if (displayError) {
      assert(error != null);
    }
  }

  CustomTextField.password({
    Key? key,
    required this.onEdit,
    this.error,
    required this.hint,
    this.displayError = false,
    this.value,
    this.controller,
  }) : super(key: key) {
    isPassword = true;
    if (displayError) {
      assert(error != null);
    }
  }

  late bool isPassword;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  IconData passwordIcon = CupertinoIcons.eye;
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.circular(10),
          ),
          width: 275,
          height: 60,
          child: TextField(
            cursorColor: Theme.of(context).iconTheme.color,
            controller: widget.controller ??
                TextEditingController(
                  text: widget.value,
                ),
            obscureText: widget.isPassword ? obscureText : false,
            onChanged: widget.onEdit,
            decoration: InputDecoration(
              labelText: widget.hint,
              suffixIcon: widget.isPassword
                  ? InkWell(
                      onTap: _onPasswordIconPressed,
                      child: Icon(
                        passwordIcon,
                        color: Theme.of(context).iconTheme.color,
                      ),
                    )
                  : null,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Theme.of(context).iconTheme.color as Color,
                  width: 3.0,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        if (widget.displayError)
          Text(
            widget.error!,
            style: Theme.of(context).textTheme.caption,
          )
      ],
    );
  }

  _onPasswordIconPressed() {
    setState(() {
      if (obscureText) {
        passwordIcon = CupertinoIcons.eye_slash;
      } else {
        passwordIcon = CupertinoIcons.eye;
      }
      obscureText = !obscureText;
    });
  }
}
