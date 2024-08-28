import 'package:cinehub/dummy_data/upi_payment_dummy.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../model_class/upi_payment_model.dart';
import '../provider.dart';
import '../upi_payment_checkbox.dart';

class UpiPaymentDesign extends StatefulWidget {
  const UpiPaymentDesign({super.key});

  @override
  State<UpiPaymentDesign> createState() => _UpiPaymentDesignState();
}

class _UpiPaymentDesignState extends State<UpiPaymentDesign> {
  int? selectedCheckboxIndex;
  int index = 0;

  @override
  Widget build(BuildContext context) {
    final providervar = Provider.of<ProviderClass>(context);
    UpiPaymentModel payment =
        UpiPaymentModel.fromjson(UpiPaymentDummy.jsonData[index]);
    return Scaffold(
      backgroundColor: providervar.mode? Colors.white : Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.red[900],
        leading: IconButton(
          onPressed: () {
            context.go('/payment_method_page_design');
          },
          icon: Icon(
            Icons.arrow_circle_left_outlined,
            size: 40,
          ),
          color: Colors.white,
        ),
        title: Text(
          'Pay Using UPI',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20, top: 20),
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: UpiPaymentDummy.jsonData.length,
                itemBuilder: (BuildContext context, int index) {
                  UpiPaymentModel payment =
                      UpiPaymentModel.fromjson(UpiPaymentDummy.jsonData[index]);
                  return UpiPaymentCheckBox(
                    text: payment.payment,
                    isChecked: selectedCheckboxIndex == index,
                    onChanged: (bool? value) {
                      setState(() {
                        selectedCheckboxIndex = value == true ? index : null;
                      });
                    },
                    imagePath: payment.image,
                  );
                },
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(top: 30),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red[900],
                ),
                onPressed: () {
                  context.go('/card_details_design');
                },
                child: Text(
                  'Submit',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
