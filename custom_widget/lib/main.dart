import 'package:flutter/material.dart';

import 'TextWidget/Projectpage.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Projectpage()
    );

  }
}
void main(){
  runApp(MyApp());
}

