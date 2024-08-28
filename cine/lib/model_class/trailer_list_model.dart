import 'package:flutter/cupertino.dart';

class TrailerListModel {
  final IconData icon;
  final String title;
  final String imagepath;


  TrailerListModel( {
    required this.icon,
    required this.title,
    required this.imagepath,
  });

  factory TrailerListModel.fromJson(Map<String, dynamic> json) {
    return TrailerListModel(
      icon: json['myicon'] ?? '',
      title: json['mytitle'] ?? '',
      imagepath: json['myimagepath'] ?? '',
    );
  }
}
