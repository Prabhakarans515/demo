
import 'package:flutter/material.dart';

class TeaserScreenTwoModel {
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
  final String language;
  final String languagenames;
  final String certificate;
  final String certificatename;
  final String duration;
  final String durationtime;
  final String ebtext;

  TeaserScreenTwoModel( {
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
    required this.language,
    required this.languagenames,
    required this.certificate,
    required this.certificatename,
    required this.duration,
    required this.durationtime,
    required this.ebtext,
  });

  factory TeaserScreenTwoModel.fromJson(Map<String, dynamic> json) {
    return TeaserScreenTwoModel(
      icon: json['myicon'] ?? '', // Default icon if not found
      title: json['mytitle'] ?? '',
      imagepath: json['myimagepath'] ?? '',
      starring: json['mystarring'] ?? '',
      starringone: json['mystarringone'] ?? '',
      starringtwo: json['mystarringtwo'] ?? '',
      director: json['mydirector'] ?? '',
      directorname: json['mydirectorname'] ?? '',
      musicdirector: json['mymusicdirector'] ?? '',
      musicdirectorname: json['mymusicdirectorname'] ?? '',
      language: json['mylanguage'] ?? '',
      languagenames: json['mylanguagenames'] ?? '',
      certificate: json['mycertificate'] ?? '',
      certificatename: json['mycertificatename'] ?? '',
      duration: json['myduration'] ?? '',
      durationtime: json['mydurationtime'] ?? '',
      ebtext: json['myebtext'] ?? '',
    );
  }
}