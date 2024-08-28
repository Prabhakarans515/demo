
import 'package:flutter/material.dart';
class CustomText extends StatefulWidget {
  final String text;

  const CustomText({super.key,
    required this.text});

  @override
  State<CustomText> createState() => _State();
}

class _State extends State<CustomText> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(widget.text,style: TextStyle(fontSize: 45,fontWeight: FontWeight.bold,
        color: Colors.black,),
        ),
      ],
    );
  }
}

