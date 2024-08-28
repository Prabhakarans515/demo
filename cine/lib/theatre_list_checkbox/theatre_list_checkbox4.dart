import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TheatreListCheckBoxFour extends StatefulWidget {
  final bool isChecked;
  final ValueChanged<bool?> onChanged;

  const TheatreListCheckBoxFour({super.key,
    required this.isChecked,
    required this.onChanged,
  });

  @override
  State<TheatreListCheckBoxFour> createState() => _TheatreListCheckBoxFourState();
}

class _TheatreListCheckBoxFourState extends State<TheatreListCheckBoxFour> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Checkbox(
          value: widget.isChecked,
          checkColor: Colors.black,
          activeColor: Colors.white,
          onChanged:widget.onChanged ,
        ),
      ],
    );
  }
}