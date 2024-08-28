import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TheatreListCheckBoxThree extends StatefulWidget {
  final bool isChecked;
  final ValueChanged<bool?> onChanged;

  const TheatreListCheckBoxThree({super.key,
    required this.isChecked,
    required this.onChanged,
  });

  @override
  State<TheatreListCheckBoxThree> createState() => _TheatreListCheckBoxThreeState();
}

class _TheatreListCheckBoxThreeState extends State<TheatreListCheckBoxThree> {
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