import 'package:flutter/cupertino.dart';

class PrintTicketFormatModel {
  final IconData icon;
  final String title;
  final String print;
  final String imagepath;
  final String formatname;
  final String submit;

  PrintTicketFormatModel( {
    required this.icon,
    required this.title,
    required this.print,
    required this.imagepath,
    required this.formatname,
    required this.submit,
  });

  factory PrintTicketFormatModel.fromJson(Map<String, dynamic> json) {
    return PrintTicketFormatModel(
      icon: json['myicon'] ,
      title: json['mytitle'] ?? '',
      print: json['myprint'] ?? '',
      imagepath: json['myimagepath'] ?? '',
      formatname: json['myformatname'] ?? '',
      submit: json['mysubmit'] ?? '',
    );
  }
}
