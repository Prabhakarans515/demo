import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TheatreListCheckBoxTwo extends StatefulWidget {
  final bool isChecked;
  final ValueChanged<bool?> onChanged;

  const TheatreListCheckBoxTwo({super.key,
    required this.isChecked,
    required this.onChanged,
  });

  @override
  State<TheatreListCheckBoxTwo> createState() => _TheatreListCheckBoxTwoState();
}

class _TheatreListCheckBoxTwoState extends State<TheatreListCheckBoxTwo> {
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