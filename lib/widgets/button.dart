import 'package:coinforbarter_flutter_sdk/styles/style.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  Function? function;
  String? argOne;
  String? argTwo;
  String? argThree;
  Color? color;
  Color? textColor;
  String? route;

  CustomButton(
      {this.argOne,
      this.argThree,
      this.argTwo,
      this.function,
      this.color,
      this.textColor,
      required this.route});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
          padding: MaterialStateProperty.all(EdgeInsets.zero),
        ),
        onPressed: () {
          Navigator.pushNamed(context, route!);
        },
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
