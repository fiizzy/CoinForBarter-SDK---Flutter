import 'package:coinforbarter_flutter_sdk/styles/style.dart';
import 'package:coinforbarter_flutter_sdk/views/selectCurrency/currencyCard.dart';
import 'package:coinforbarter_flutter_sdk/views/selectCurrency/productCard.dart';
import 'package:coinforbarter_flutter_sdk/views/selectCurrency/securedByCoinForBarter.dart';
import 'package:coinforbarter_flutter_sdk/widgets/button.dart';
import 'package:flutter/material.dart';

class SelectCurrency extends StatefulWidget {
  const SelectCurrency({Key? key}) : super(key: key);

  @override
  _SelectCurrencyState createState() => _SelectCurrencyState();
}

class _SelectCurrencyState extends State<SelectCurrency> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("Select Currency"),
            backgroundColor: MyStyles.primaryPurple),
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
                    "Select Currency",
                    style: MyStyles.headerOneW,
                    textAlign: TextAlign.left,
                  ),
                  MyStyles.verticalSpaceOne,
                  CurrencyCard(),
                  CurrencyCard(),
                ],
              ),
              Positioned(
                  bottom: 0,
                  child: CustomButton(
                    color: MyStyles.gold,
                    textColor: MyStyles.primaryPurple,
                    route: '/paymentPreview',
                  ))
            ],
          ),
        ));
  }
}
