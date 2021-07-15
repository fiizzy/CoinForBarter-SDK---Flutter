import 'package:coinforbarter_flutter_sdk/styles/style.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.circle),
                  MyStyles.horizontalSpaceZero,
                  Container(
                    child: Text(
                      'Gadget Home Limited',
                    ),
                  )
                ],
              ),
            ),
            Divider(
              color: Colors.grey,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Text(
                "Item",
                style: MyStyles.headerOne,
                textAlign: TextAlign.left,
              ),
            ),
            MyStyles.verticalSpaceZero,
            Container(
              width: MediaQuery.of(context).size.width,
              child: Text(
                "8 GB Ram, 256 GB space, Dual Sim",
                style: MyStyles.bodyText,
                textAlign: TextAlign.left,
              ),
            ),
            MyStyles.verticalSpaceOne,
            Container(
              width: MediaQuery.of(context).size.width,
              child: Text(
                "Price",
                style: MyStyles.headerOne,
                textAlign: TextAlign.left,
              ),
            ),
            MyStyles.verticalSpaceZero,
            Container(
              width: MediaQuery.of(context).size.width,
              child: Text(
                "0.424325 BTC | N,2000",
                style: MyStyles.bodyText,
                textAlign: TextAlign.left,
              ),
            ),
          ],
        ),
        padding: EdgeInsets.all(20),
      ),
    );
  }
}
