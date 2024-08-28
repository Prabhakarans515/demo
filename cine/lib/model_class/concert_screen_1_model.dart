import 'package:flutter/material.dart';

class ConcertScreenOneModel {
  final IconData icon;
  final String title;
  final String imagepath;
  final String text1;
  final String text2;
  final String text3;
  final String venue;
  final String venuename;
  final String location;
  final String locationname1;
  final String locationname2;
  final String locationname3;
  final String date;
  final String date1;
  final String price;
  final String pricers;
  final String ebtext;

  ConcertScreenOneModel({
    required this.icon,
    required this.title,
    required this.imagepath,
    required this.text1,
    required this.text2,
    required this.text3,
    required this.venue,
    required this.venuename,
    required this.location,
    required this.locationname1,
    required this.locationname2,
    required this.locationname3,
    required this.date,
    required this.date1,
    required this.price,
    required this.pricers,
    required this.ebtext,
  });

  factory ConcertScreenOneModel.fromJson(Map<String, dynamic> json) {
    return ConcertScreenOneModel(
      icon: json['myicon'] ?? '', // Default icon if not found
      title: json['mytitle'] ?? '',
      imagepath: json['myimagepath'] ?? '',
      text1: json['mytext1'] ?? '',
      text2: json['mytext2'] ?? '',
      text3: json['mytext3'] ?? '',
      venue: json['myvenue'] ?? '',
      venuename: json['myvenuename'] ?? '',
      location: json['mylocation'] ?? '',
      locationname1: json['mylocationname1'] ?? '',
      locationname2: json['mylocationname2'] ?? '',
      locationname3: json['mylocationname3'] ?? '',
      date: json['mydate'] ?? '',
      date1: json['mydate1'] ?? '',
      price: json['myprice'] ?? '',
      pricers: json['mypricers'] ?? '',
      ebtext: json['myebtext'] ?? '',
    );
  }
}
