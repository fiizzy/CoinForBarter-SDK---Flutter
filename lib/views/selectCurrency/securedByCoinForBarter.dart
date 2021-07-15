import 'package:coinforbarter_flutter_sdk/styles/style.dart';
import 'package:flutter/material.dart';

class SecuredByCoinForBarter extends StatelessWidget {
  const SecuredByCoinForBarter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.all(5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.lock, size: 15),
            MyStyles.horizontalSpaceZero,
            Container(
              child: Text(
                'Secured By CoinfForBarter',
                style: MyStyles.bodyTextSmall,
              ),
            )
          ],
        ),
      ),
    );
  }
}
