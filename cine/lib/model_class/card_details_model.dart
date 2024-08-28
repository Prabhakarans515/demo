class CardDetailsModel{
  final String cnumber;
  final String cname;
  final int cmonth;
  final int cyear;
  final int ccvv;

  CardDetailsModel({
    required this.cnumber,
    required this.cname,
    required this.cmonth,
    required this.cyear,
    required this.ccvv,

  });
  factory CardDetailsModel.fromjson(Map<String,dynamic> json){
    return CardDetailsModel(
      cnumber: json['cardnumber'],
      cname: json['cardname'],
      cmonth: json['cardmonth'],
      cyear: json['cardyear'],
      ccvv: json['cardcvv'],
    );
  }
  Map<String,dynamic> tojson(){
    return{
      'cardnumber':cnumber,
      'cardname':cname,
      'cardmonth':cmonth,
      'cardyear':cyear,
      'cardcvv':ccvv,
    };

  }
}
