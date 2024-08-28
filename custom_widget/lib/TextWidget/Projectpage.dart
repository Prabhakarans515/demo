import 'package:flutter/material.dart';
import 'CustomElevatedButton.dart';
import 'IconButton.dart';

import 'CustomText.dart';
class Projectpage extends StatefulWidget {
  const Projectpage({super.key});

  @override
  State<Projectpage> createState() => _ProjectpageState();
}

class _ProjectpageState extends State<Projectpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const CustomElevated(
              text: 'Hello World',
            ),
          ],
        )
      )
    );
  }
}

