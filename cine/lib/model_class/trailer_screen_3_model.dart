
import 'package:flutter/material.dart';

class TrailerScreenThreeModel {
  final IconData icon;
  final String title;
  final String imagepath;
  final String starring;
  final String starringone;
  final String starringtwo;
  final String starringthree;
  final String director;
  final String directorname;
  final String musicdirector;
  final String musicdirectorname;
  final String language;
  final String languagenames;
  final String duration;
  final String durationtime;
  final String ebtext;

  TrailerScreenThreeModel( {
    required this.icon,
    required this.title,
    required this.imagepath,
    required this.starring,
    required this.starringone,
    required this.starringtwo,
    required this.starringthree,
    required this.director,
    required this.directorname,
    required this.musicdirector,
    required this.musicdirectorname,
    required this.language,
    required this.duration,
    required this.languagenames,
    required this.durationtime,
    required this.ebtext,
  });

  factory TrailerScreenThreeModel.fromJson(Map<String, dynamic> json) {

    return TrailerScreenThreeModel(
      icon: json['myicon']?? '', // Default icon if not found
      title: json['mytitle'] ?? '',
      imagepath: json['myimagepath'] ?? '',
      starring: json['mystarring'] ?? '',
      starringone: json['mystarringone'] ?? '',
      starringtwo: json['mystarringtwo'] ?? '',
      starringthree: json['mystarringthree'] ?? '',
      director: json['mydirector'] ?? '',
      directorname: json['mydirectorname'] ?? '',
      musicdirector: json['mymusicdirector'] ?? '',
      musicdirectorname: json['mymusicdirectorname'] ?? '',
      language: json['mylanguage'] ?? '',
      languagenames: json['mylanguagenames'] ?? '',
      duration: json['myduration'] ?? '',
      durationtime: json['mydurationtime'] ?? '',
      ebtext: json['myebtext'] ?? '',
    );
  }
}