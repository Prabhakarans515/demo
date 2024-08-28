import 'package:cinehub/provider.dart';
import 'package:cinehub/router.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
//import 'package:go_router/go_router.dart';

//import 'design_page/movie_list_screen_design.dart'; // Uncomment and use your actual screen imports here

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) {
        return ProviderClass();
      },
      child: MaterialApp.router(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        routerConfig: router,
      ),
    );
  }
}