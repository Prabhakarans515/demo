import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TheatreListCheckBoxOne extends StatefulWidget {
  final bool isChecked;
  final ValueChanged<bool?> onChanged;

  const TheatreListCheckBoxOne({super.key,
    required this.isChecked,
    required this.onChanged,
  });

  @override
  State<TheatreListCheckBoxOne> createState() => _TheatreListCheckBoxOneState();
}

class _TheatreListCheckBoxOneState extends State<TheatreListCheckBoxOne> {
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