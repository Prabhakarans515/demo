class PaymentMethodPageModel {
  late String texth;
  late String text;
  late String text1;
  late String amount;
  late String image;
  late String payment;

  PaymentMethodPageModel({
    required this.texth,
    required this.text,
    required this.text1,
    required this.amount,
    required this.image,
    required this.payment,
  });

  factory PaymentMethodPageModel.fromjson(Map<String, dynamic> json) {
    return PaymentMethodPageModel(
      texth: json['mytexth']?? "",
        text: json['text']?? "",
        text1: json['text1']?? "",
        amount: json['amount']?? "",
        image: json['image']?? "",
        payment: json['payment']?? ""
    );
  }
}
