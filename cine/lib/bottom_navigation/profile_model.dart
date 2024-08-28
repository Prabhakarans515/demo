import 'package:flutter/cupertino.dart';

class ProfileModel {
  final String recent;
  final String image;
  final String moviename;
  final String language;
  final String date;
  final String time;
  final String theatre;
  final String ticket;
  final String button;
  final String text;
  final String emoji;
  final List<IconData> icon;
  final List<String> title;
  final List<String> subtitle;
  final IconData icon1;

  ProfileModel(
      {required this.recent,
        required this.image,
        required this.moviename,
        required this.language,
        required this.date,
        required this.time,
        required this.theatre,
        required this.ticket,
        required this.button,
        required this.text,
        required this.emoji,
        required this.icon,
        required this.title,
        required this.subtitle,
        required this.icon1});

  factory ProfileModel.fromJson(Map<String, dynamic> json) {
    return ProfileModel(
        recent: json['recent'],
        image: json['image'],
        moviename: json['moviename'],
        language: json['language'],
        date: json['date'],
        time: json['time'],
        theatre: json['theatre'],
        ticket: json['ticket'],
        button: json['button'],
        text: json['text'],
        emoji: json['emoji'],
        icon: json['icon'],
        title: json['title'],
        subtitle: json['subtitle'],
        icon1: json['icon1']);
  }
}
