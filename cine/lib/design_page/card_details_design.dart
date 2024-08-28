import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../model_class/card_details_model.dart';
import '../provider.dart';

class CardDeatilsDesign extends StatefulWidget {
  const CardDeatilsDesign({Key? key}) : super(key: key);

  @override
  State<CardDeatilsDesign> createState() => _CardDeatilsDesignState();
}

class _CardDeatilsDesignState extends State<CardDeatilsDesign> {
  final _formKey = GlobalKey<FormState>();

  final _cardnumbercontroller = TextEditingController();
  final _cardnamecontroller = TextEditingController();
  final _cardmonthcontroller = TextEditingController();
  final _cardyearcontroller = TextEditingController();
  final _cardcvvcontroller = TextEditingController();

  void _cardDeatilsFunction(CardDetailsModel card) {
    final Map<String, dynamic> data = card.tojson();
    if (kDebugMode) {
      print(data);
    }
  }

  void submitForm() {
    if (_formKey.currentState!.validate()) {
      CardDetailsModel card = CardDetailsModel(
        cnumber: _cardnumbercontroller.text,
        cname: _cardnamecontroller.text,
        cmonth: _cardmonthcontroller.hashCode,
        cyear: _cardyearcontroller.hashCode,
        ccvv: _cardcvvcontroller.hashCode,
      );
      _cardDeatilsFunction(card);
    }
  }

  @override
  Widget build(BuildContext context) {
    final providervar = Provider.of<ProviderClass>(context);
    return Scaffold(
    backgroundColor: providervar.mode? Colors.white : Colors.black,
      appBar: AppBar(
        centerTitle: true,
        title:  Text(
          'Card details',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            context.go('/upi_payment_design');
          },
          icon: Icon(
            Icons.arrow_circle_left_outlined,
            color: Colors.white,
            size: 40,
          ),
        ),
        backgroundColor: Colors.red[900],
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
               SizedBox(height: 20),
               Padding(
                padding: EdgeInsets.only(left: 35.0),
                child: Text(
                  'Enter your Card details',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding:  EdgeInsets.only(left: 20),
                child: Container(
                  height: 400,
                  width: 320,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.blue[600],
                  ),
                  child: Padding(
                    padding:  EdgeInsets.only(right: 20, top: 5),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding:  EdgeInsets.only(right: 140, top: 20),
                          child:  Text(
                            'Card number',
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                         SizedBox(height: 15),
                        Padding(
                          padding:  EdgeInsets.only(right: 15, left: 14),
                          child: TextFormField(
                            controller: _cardnumbercontroller,
                            decoration:  InputDecoration(
                              hintText: 'Enter Your Card Number',
                              hintStyle: TextStyle(color: Colors.black26),
                              filled: true,
                              fillColor: Colors.white,
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ),
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 10.0, horizontal: 10.0),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Please Enter a Card Number";
                              }
                              return null;
                            },
                          ),
                        ),
                         SizedBox(height: 15),
                        Padding(
                          padding:  EdgeInsets.only(right: 15, left: 14),
                          child: TextFormField(
                            controller: _cardnamecontroller,
                            decoration:  InputDecoration(
                              hintText: 'Name on the Card',
                              hintStyle: TextStyle(color: Colors.black26),
                              filled: true,
                              fillColor: Colors.white,
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ),
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 10.0, horizontal: 10.0),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Please Enter a Card Name";
                              }
                              return null;
                            },
                          ),
                        ),
                         SizedBox(height: 40),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                 Text(
                                  'Expiry',
                                  style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                 SizedBox(height: 10),
                                Row(
                                  children: [
                                    Container(
                                      width: 50,
                                      child: TextFormField(
                                        controller: _cardmonthcontroller,
                                        decoration:  InputDecoration(
                                          hintText: 'MM',
                                          hintStyle:
                                              TextStyle(color: Colors.black26),
                                          filled: true,
                                          fillColor: Colors.white,
                                          enabledBorder: OutlineInputBorder(
                                            borderSide:
                                                BorderSide(color: Colors.white),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide:
                                                BorderSide(color: Colors.white),
                                          ),
                                          border: OutlineInputBorder(
                                            borderSide:
                                                BorderSide(color: Colors.white),
                                          ),
                                          contentPadding: EdgeInsets.symmetric(
                                              vertical: 10.0, horizontal: 10.0),
                                        ),
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return "Please Enter a Card Month";
                                          }
                                          return null;
                                        },
                                      ),
                                    ),
                                     SizedBox(width: 10),
                                    Container(
                                      width: 50,
                                      child: TextFormField(
                                        controller: _cardyearcontroller,
                                        decoration:  InputDecoration(
                                          hintText: 'YY',
                                          hintStyle:
                                              TextStyle(color: Colors.black26),
                                          filled: true,
                                          fillColor: Colors.white,
                                          enabledBorder: OutlineInputBorder(
                                            borderSide:
                                                BorderSide(color: Colors.white),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide:
                                                BorderSide(color: Colors.white),
                                          ),
                                          border: OutlineInputBorder(
                                            borderSide:
                                                BorderSide(color: Colors.white),
                                          ),
                                          contentPadding: EdgeInsets.symmetric(
                                              vertical: 10.0, horizontal: 15.0),
                                        ),
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return "Please Enter a Card Year";
                                          }
                                          return null;
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                             SizedBox(width: 50),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                 Text(
                                  'CVV',
                                  style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                 SizedBox(height: 10),
                                Container(
                                  width: 90,
                                  child: TextFormField(
                                    controller: _cardcvvcontroller,
                                    decoration:  InputDecoration(
                                      hintText: 'CVV',
                                      hintStyle:
                                          TextStyle(color: Colors.black26),
                                      filled: true,
                                      fillColor: Colors.white,
                                      enabledBorder: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.white),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.white),
                                      ),
                                      border: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.white),
                                      ),
                                      contentPadding: EdgeInsets.symmetric(
                                          vertical: 10.0, horizontal: 10.0),
                                    ),
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return "Please Enter a Card CVV";
                                      }
                                      return null;
                                    },
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 70),
              Padding(
                padding: EdgeInsets.only(left: 30),
                child: ElevatedButton(
                  onPressed: submitForm,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red[900],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                  child: Text(
                    'MAKE PAYMENT',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
