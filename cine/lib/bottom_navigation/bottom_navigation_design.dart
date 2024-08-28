import 'package:flutter/material.dart';

import '../design_page/concert_list_design.dart';
import '../design_page/movie_list_screen_design.dart';


import '../design_page/trailer_list_design.dart';
import '../login_to_dashboard/login_to_dashboard_design/dashboard_design.dart';

class BottomNavigationMovieApp extends StatefulWidget {
  const BottomNavigationMovieApp({super.key});

  @override
  State<BottomNavigationMovieApp> createState() => _BottomNavigationMovieAppState();
}

class _BottomNavigationMovieAppState extends State<BottomNavigationMovieApp> {
  List<Widget> pages = [
    const DashBoardPageMovieApp(),
    const MovieListScreenDesign(),
    const ConcertListDesign(),
    const TrailerListDesign(),
  ];
  int index = 0;

  void _ontap(val) {
    setState(() {
      index = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[index],
      bottomNavigationBar: BottomNavigationBar(
        items:  [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.videocam_sharp,
            ),
            label: 'Movies',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.music_note,
            ),
            label: 'Concerts',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.play_circle_outline_outlined,
            ),
            label: 'Trailer',
          )
        ],
        currentIndex: index,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.black,
        onTap: _ontap,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
