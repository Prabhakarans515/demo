import 'package:flutter/cupertino.dart';

class TheatersListScreenModel {
  final String title;
  late String image;
  late String text;
  late String text1;
  late String text2;
  late String text3;
  late String timeopen;
  late String timeclose;
  late String rating;
  late String ratingvotes;
  late String number;
  late IconData icon1;
  late IconData icon2;
  late IconData icon3;

  TheatersListScreenModel({
    required this.title,
    required this.text,
    required this.text1,
    required this.text2,
    required this.text3,
    required this.image,
    required this.timeopen,
    required this.timeclose,
    required this.rating,
    required this.ratingvotes,
    required this.number,
    required this.icon1,
    required this.icon2,
    required this.icon3

  });

  factory TheatersListScreenModel.fromjson(Map<String, dynamic> json) {
    return TheatersListScreenModel(
      title: json['mytitle']?? "",
      text: json['myfirsttext']?? "",
      text2: json['mysecondtext']?? "",
      text3: json['mythirdtext']?? "",
      image: json['myimages']?? "",
      timeopen: json['mytimeopen']?? "",
      timeclose: json['mytimeclose']?? "",
      rating: json['myratings']?? "",
      ratingvotes: json['myratingsone']?? "",
      number: json['allnumbers']?? "",
      text1: json['title']?? "",
      icon1: json['icon1']?? "",
      icon2: json['icon2']?? "",
      icon3: json['icon3']?? "",

    );
  }
}
