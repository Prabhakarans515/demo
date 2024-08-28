import 'package:flutter/cupertino.dart';

class MovieScreenThreeModel {
  final IconData icon;
  final String title;
  final String imagepath;
  final String starring;
  final String starringone;
  final String starringtwo;
  final String director;
  final String directorname;
  final String musicdirector;
  final String musicdirectorname;
  final String rating;
  final String ratingvotes;
  final String ebtext;

  MovieScreenThreeModel({
    required this.icon,
    required this.title,
    required this.imagepath,
    required this.starring,
    required this.starringone,
    required this.starringtwo,
    required this.director,
    required this.directorname,
    required this.musicdirector,
    required this.musicdirectorname,
    required this.rating,
    required this.ratingvotes,
    required this.ebtext,
  });

  factory MovieScreenThreeModel.fromJson(Map<String, dynamic> json) {
    return MovieScreenThreeModel(
      icon: json['myicon'],
      title: json['mytitle'],
      imagepath: json['myimagepath'],
      starring: json['mystarring'],
      starringone: json['mystarringone'],
      starringtwo: json['mystarringtwo'],
      director: json['mydirector'],
      directorname: json['mydirectorname'],
      musicdirector: json['mymusicdirector'],
      musicdirectorname: json['mymusicdirectorname'],
      rating: json['myrating'],
      ratingvotes: json['myratingvotes'],
      ebtext: json['myebtext'],
    );
  }
}