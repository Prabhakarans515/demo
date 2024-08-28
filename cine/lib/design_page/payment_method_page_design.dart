import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../dummy_data/payment_method_page_dummy.dart';
import '../model_class/payment_method_page_model.dart';
import '../provider.dart';

class PaymentMethodPageDesign extends StatefulWidget {
  const PaymentMethodPageDesign({super.key});

  @override
  State<PaymentMethodPageDesign> createState() =>
      _PaymentMethodPageDesignState();
}

class _PaymentMethodPageDesignState extends State<PaymentMethodPageDesign> {
  int selectedindex = -1;

  void _toggleSelection(int index) {
    setState(() {
      selectedindex = index;
    });
  }

  int index = 0;

  @override
  Widget build(BuildContext context) {
    final providervar = Provider.of<ProviderClass>(context);
    PaymentMethodPageModel payment =
        PaymentMethodPageModel.fromjson(PaymentMethodPageDummy.jsonData[index]);
    return Scaffold(
      backgroundColor: providervar.mode? Colors.white : Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.red[900],
        leading: IconButton(
          onPressed: () {
            context.go('/seat_selecting_design');
          },
          icon: Icon(
            Icons.arrow_circle_left_outlined,
            size: 40,
          ),
          color: Colors.white,
        ),
        title: Text(
          payment.texth,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsets.only(top: 30),
            child: Column(
              children: [
                Text(
                  payment.text,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 150),
                  child: Row(
                    children: [
                      Text(
                        payment.text1,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        payment.amount,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 30, bottom: 15),
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: PaymentMethodPageDummy.jsonData.length,
                    itemBuilder: (BuildContext context, int index) {
                      PaymentMethodPageModel payment =
                          PaymentMethodPageModel.fromjson(
                              PaymentMethodPageDummy.jsonData[index]);
                      return Padding(
                        padding: EdgeInsets.only(top: 20, left: 15, right: 15),
                        child: GestureDetector(
                          onTap: () {
                            if (index == 0 || index == 1 || index == 2) {
                              context.go('/upi_payment_design');
                            } if(index ==3 || index == 4) {
                              context.go('/card_details_design');
                            }
                          },
                          child: Container(
                            height: 80,
                            width: 340,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: selectedindex == index
                                  ? Colors.blue[200]
                                  : Colors.white,
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 25,
                                  ),
                                  child: Container(
                                    height: 70,
                                    width: 80,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Colors.blueAccent,
                                      image: DecorationImage(
                                        image: AssetImage(payment.image),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 60,
                                  ),
                                  child: Text(
                                    payment.payment,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                // ElevatedButton(
                //   style: ElevatedButton.styleFrom(
                //     backgroundColor: Colors.red[900],
                //   ),
                //   onPressed: () {
                //     if (index == 0 || index == 1 || index == 2) {
                //       context.go('/upi_payment_design');
                //     } else {
                //       context.go('/card_details_design');
                //     }
                //   },
                //   child: Text(
                //     'Submit',
                //     style: TextStyle(
                //       fontWeight: FontWeight.bold,
                //       color: Colors.white,
                //       fontSize: 20,
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
