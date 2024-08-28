class SelectSeatDateModel {
  final String text;
  final String image;
  final List<int> seats;
  final String dateText;
  final List<String> day;
  final List<int> date;
  final List<String> month;
  final String button;

  SelectSeatDateModel({
    required this.text,
    required this.image,
    required this.seats,
    required this.dateText,
    required this.day,
    required this.date,
    required this.month,
    required this.button,
  });

  factory SelectSeatDateModel.fromJson(Map<String, dynamic> json) {
    return SelectSeatDateModel(
        text: json['text'],
        image: json['image'],
        seats: json['seats'],
        dateText: json['dateText'],
        day: json['day'],
        date: json['date'],
        month: json['month'],
        button: json['button']);
  }
}
