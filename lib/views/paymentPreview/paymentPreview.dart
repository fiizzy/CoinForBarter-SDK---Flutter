import 'package:coinforbarter_flutter_sdk/styles/style.dart';
import 'package:coinforbarter_flutter_sdk/views/paymentPreview/addressDetails.dart';
import 'package:coinforbarter_flutter_sdk/views/selectCurrency/productCard.dart';
import 'package:coinforbarter_flutter_sdk/views/selectCurrency/securedByCoinForBarter.dart';
import 'package:flutter/material.dart';

class PaymentPreview extends StatefulWidget {
  const PaymentPreview({Key? key}) : super(key: key);

  @override
  _PaymentPreviewState createState() => _PaymentPreviewState();
}

class _PaymentPreviewState extends State<PaymentPreview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("Tranfer"), backgroundColor: MyStyles.primaryPurple),
        backgroundColor: MyStyles.primaryPurple,
        body: SafeArea(
          child: Stack(
            alignment: AlignmentDirectional.bottomCenter,
            children: [
              ListView(
                padding: EdgeInsets.all(10),
                children: [
                  ProductCard(),
                  MyStyles.verticalSpaceZero,
                  SecuredByCoinForBarter(),
                  MyStyles.verticalSpaceOne,
                  Text(
                    "Address",
                    style: MyStyles.headerOneW,
                    textAlign: TextAlign.left,
                  ),
                  MyStyles.verticalSpaceOne,
                  Card(
                      color: MyStyles.gold,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Wrap(
                          alignment: WrapAlignment.center,
                          direction: Axis.horizontal,
                          children: [
                            Text('1:20:23s Remaining',
                                style: MyStyles.bodyText),
                            MyStyles.horizontalSpaceZero,
                          ],
                        ),
                      )),
                  AddressDetails()
                ],
              ),
            ],
          ),
        ));
  }
}
