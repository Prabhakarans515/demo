import 'package:flutter/cupertino.dart';

class TheatreListPageThreeModel {
  final IconData icon;
  final String title;
  final String show;
  final String showtime;
  final String showsound;
  final String submit;

  TheatreListPageThreeModel({
    required this.icon,
    required this.title,
    required this.show,
    required this.showtime,
    required this.showsound,
    required this.submit,
  });

  factory TheatreListPageThreeModel.fromJson(Map<String, dynamic> json) {
    return TheatreListPageThreeModel(
      icon: json['myicon'] ?? '',
      title: json['mytitle'] ?? '',
      show: json['myshow'] ?? '',
      showtime: json['myshowtime'] ?? '',
      showsound: json['myshowsound'] ?? '',
      submit: json['mysubmit'] ?? '',
    );
  }
}
