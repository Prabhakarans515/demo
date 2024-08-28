class HomeModel {
  final List<String> carousel;
  final String title;
  final String subtitle;
  final String label;
  final List<String> movies;
  final String label1;
  final List<String> concerts;
  final String label2;
  final List<String> shows;
  final String label3;
  final List<String> comedy;

  HomeModel({
    required this.carousel,
    required this.title,
    required this.subtitle,
    required this.label,
    required this.movies,
    required this.label1,
    required this.concerts,
    required this.label2,
    required this.shows,
    required this.label3,
    required this.comedy,
  });

  factory HomeModel.fromJson(Map<String, dynamic> json) {
    return HomeModel(
      carousel: json['carousel'],
      title: json['title'],
      subtitle: json['subtitle'],
      label: json['label'],
      movies: json['movies'],
      label1: json['label1'],
      concerts: json['concerts'],
      label2: json['label2'],
      shows: json['shows'],
      label3: json['label3'],
      comedy: json['comedy'],
    );
  }
}
