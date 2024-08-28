
import 'package:flutter/material.dart';

class TeaserScreenOneModel {
  final IconData icon;
  final String title;
  final String imagepath;
  final String starring;
  final String starringone;
  final String starringtwo;
  final String starringthree;
  final String starringfour;
  final String director;
  final String directorname;
  final String musicdirector;
  final String musicdirectorname;
  final String language;
  final String languagenames1;
  final String languagenames2;
  final String languagenames3;
  final String certificate;
  final String certificatename;
  final String duration;
  final String durationtime;
  final String ebtext;

  TeaserScreenOneModel({
    required this.icon,
    required this.title,
    required this.imagepath,
    required this.starring,
    required this.starringone,
    required this.starringtwo,
    required this.starringthree,
    required this.starringfour,
    required this.director,
    required this.directorname,
    required this.musicdirector,
    required this.musicdirectorname,
    required this.language,
    required this.languagenames1,
    required this.languagenames2,
    required this.languagenames3,
    required this.certificate,
    required this.certificatename,
    required this.duration,
    required this.durationtime,
    required this.ebtext,
  });

  factory TeaserScreenOneModel.fromJson(Map<String, dynamic> json) {
    return TeaserScreenOneModel(
      icon: json['myicon'] ?? '',
      title: json['mytitle'] ?? '',
      imagepath: json['myimagepath'] ?? '',
      starring: json['mystarring'] ?? '',
      starringone: json['mystarringone'] ?? '',
      starringtwo: json['mystarringtwo'] ?? '',
      starringthree: json['mystarringthree'] ?? '',
      starringfour: json['mystarringfour'] ?? '',
      director: json['mydirector'] ?? '',
      directorname: json['mydirectorname'] ?? '',
      musicdirector: json['mymusicdirector'] ?? '',
      musicdirectorname: json['mymusicdirectorname'] ?? '',
      language: json['mylanguage'] ?? '',
      languagenames1: json['mylanguagenames1'] ?? '',
      languagenames2: json['mylanguagenames2'] ?? '',
      languagenames3: json['mylanguagenames3'] ?? '',
      certificate: json['mycertificate'] ?? '',
      certificatename: json['mycertificatename'] ?? '',
      duration: json['myduration'] ?? '',
      durationtime: json['mydurationtime'] ?? '',
      ebtext: json['myebtext'] ?? '',
    );
  }
}


