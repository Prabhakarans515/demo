import 'package:flutter/material.dart';

import 'customwidget/customise.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CustomProject(text: 'facebook',
        icon: Icons.facebook_outlined,
        textStyle: TextStyle(fontSize: 35,fontWeight:FontWeight.w200 ,color: Colors.blue[800]),
        onpressed: () {},
        color: Colors.blue,
        icon1: Icons.search,
        onpressed1: () { },
         color1: Colors.black,
        text1: 'logout', textStyle1: TextStyle(fontSize: 35,fontWeight:FontWeight.w200 ,),
        icon2: Icons.messenger,
        onpressed2: () {  },
        color2: Colors.black,
    ),
    );
  }
}

