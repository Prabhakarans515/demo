import 'package:flutter/cupertino.dart';

class MovieListScreenModel {
  final IconData icon;
  final String title;
  final String imagepath;

  MovieListScreenModel({
    required this.icon,
    required this.title,
    required this.imagepath,
  });

  factory MovieListScreenModel.fromJson(Map<String, dynamic> json) {
    return MovieListScreenModel(
      icon: json['myicon'] ?? '',
      title: json['mytitle'] ?? '',
      imagepath: json['myimagepath'] ?? '',
    );
  }
}
