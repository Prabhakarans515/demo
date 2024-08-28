import 'package:flutter/cupertino.dart';

class ConcertListModel {
  final IconData icon;
  final String title;
  final String imagepath;


  ConcertListModel( {
    required this.icon,
    required this.title,
    required this.imagepath,
  });

  factory ConcertListModel.fromJson(Map<String, dynamic> json) {
    return ConcertListModel(
      icon: json['myicon'] ?? '',
      title: json['mytitle'] ?? '',
      imagepath: json['myimagepath'] ?? '',
    );
  }
}
