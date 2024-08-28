import 'package:flutter/cupertino.dart';

class ConcertScreenThreeModel {
  final IconData icon;
  final String title;
  final String imagepath;
  final String text;
  final String text1;
  final String Myvenue;
  final String Myvenueone;
  final String MYlocation;
  final String MYlocationone;
  final String MYlocationtwo;
  final String MYlocationthree;
  final String Mydate;
  final String Mydateone;
  final String Myprice;
  final String Mypriceone;
  final String ebtext;

  ConcertScreenThreeModel({
    required this.text,
    required this.text1,
    required this.icon,
    required this.title,
    required this.imagepath,
    required this.Myvenue,
    required this.Myvenueone,
    required this.MYlocation,
    required this.MYlocationone,
    required this.MYlocationtwo,
    required this.MYlocationthree,
    required this.Mydate,
    required this.Mydateone,
    required this.Myprice,
    required this.Mypriceone,
    required this.ebtext,
  });

  factory ConcertScreenThreeModel.fromJson(Map<String, dynamic> json) {
    return ConcertScreenThreeModel(
      icon: json['myicon'] ?? '',
      title: json['mytitle'] ?? '',
      imagepath: json['myimagepath'] ?? '',
      text : json['mytext']?? "",
      text1: json['mytext1'],
      Myvenue: json['Myvenue'] ?? '',
      Myvenueone: json['Myvenueone'] ?? '',
      MYlocation: json['MYlocation'] ?? '',
      MYlocationone: json['MYlocationone'] ?? '',
      MYlocationtwo: json['MYlocationtwo'] ?? '',
      MYlocationthree: json['MYlocationthree'] ?? '',
      Mydate: json['Mydate'] ?? '',
      Mydateone: json['Mydateone'] ?? '',
      Myprice: json['Myprice'] ?? '',
      Mypriceone: json['Mypriceone'] ?? '',
      ebtext: json['myebtext'] ?? '',
    );
  }
}