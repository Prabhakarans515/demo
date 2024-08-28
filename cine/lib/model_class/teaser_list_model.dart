import 'package:flutter/cupertino.dart';

class TeaserListModel {
  final IconData icon;
  final String title;
  final String imagepath;


  TeaserListModel( {
    required this.icon,
    required this.title,
    required this.imagepath,
  });

  factory TeaserListModel.fromJson(Map<String, dynamic> json) {
    return TeaserListModel(
      icon: json['myicon'] ?? '',
      title: json['mytitle'] ?? '',
      imagepath: json['myimagepath'] ?? '',
    );
  }
}
