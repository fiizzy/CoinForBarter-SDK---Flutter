import 'package:coinforbarter_flutter_sdk/styles/style.dart';
import 'package:coinforbarter_flutter_sdk/utils.dart';
import 'package:flutter/material.dart';

class AddressDetails extends StatelessWidget {
  const AddressDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.all(10),
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Container(
                width: MediaQuery.of(context).size.width,
                child: Wrap(
                  direction: Axis.horizontal,
                  children: [
                    Text('You are to transfer'),
                    MyStyles.horizontalSpaceZero,
                    Text(
                      '0.234234234 | N2,000',
                      style: MyStyles.bodyTextBold,
                    ),
                    MyStyles.horizontalSpaceZero,
                    Text('To the address below'),
                  ],
                )),
            MyStyles.verticalSpaceOne,
            Container(
              width: MediaQuery.of(context).size.width,
              child: Text(
                "Address",
                style: MyStyles.bodyTextBold,
              ),
            ),
            MyStyles.verticalSpaceZero,
            Wrap(
              children: [
                Container(
                  // width: MediaQuery.of(context).size.width,
                  child: Text(
                    "0x6jnjJBKBJHVHVsgfJKBDKkjbfs",
                    style: MyStyles.bodyText,
                  ),
                ),
                MyStyles.horizontalSpaceZero,
                Icon(
                  Icons.copy,
                  color: MyStyles.primaryPurple,
                  size: 30,
                ),
              ],
            ),
            Image.network(
              Util.qrCode,
              height: 200,
            )
          ],
        ),
      ),
    );
  }
}
