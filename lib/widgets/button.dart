import 'package:coinforbarter_flutter_sdk/styles/style.dart';
import 'package:coinforbarter_flutter_sdk/models/config.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Color? color;
  final Color? textColor;
  final PaymentConfig? config;
  void Function()? onPressed;

  CustomButton({this.color, this.textColor, this.config, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
          padding: MaterialStateProperty.all(EdgeInsets.zero),
        ),
        onPressed: onPressed,
        child: Container(
          color: color,
          width: MediaQuery.of(context).size.width * .8,
          height: MyStyles.buttonHeight,
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.lock,
                  color: textColor,
                ),
                MyStyles.horizontalSpaceZero,
                Text('Pay with CoinForBarter',
                    style: TextStyle(color: textColor))
              ],
            ),
          ),
        ));
  }
}
