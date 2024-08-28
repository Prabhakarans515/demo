import 'package:flutter/material.dart';

class CustomTextButton extends StatefulWidget {
  final String text;
  final Color colors;
  final Color colors1;
  final VoidCallback onPressed;

  const CustomTextButton(
      {super.key,
      required this.text,
      required this.colors,
      required this.colors1,
      required this.onPressed});

  @override
  State<CustomTextButton> createState() => _CustomTextButtonState();
}

class _CustomTextButtonState extends State<CustomTextButton> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: widget.onPressed,
      style: ButtonStyle(
        padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.zero),
        minimumSize: MaterialStateProperty.all<Size>(
          Size(0, 0),
        ),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        visualDensity: VisualDensity.compact,
      ),
      child: Text(
        widget.text,
        style: TextStyle(
          color: widget.colors,
          decoration: TextDecoration.underline,
          decorationColor: widget.colors1,
        ),
      ),
    );
  }
}
