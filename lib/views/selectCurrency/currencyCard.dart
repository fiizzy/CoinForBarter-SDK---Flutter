import 'package:coinforbarter_flutter_sdk/styles/style.dart';
import 'package:flutter/material.dart';

class CurrencyCard extends StatefulWidget {
  const CurrencyCard({Key? key}) : super(key: key);

  @override
  _CurrencyCardState createState() => _CurrencyCardState();
}

class _CurrencyCardState extends State<CurrencyCard> {
  String _selectedNetwork = 'Select Nework';
  Color _selectedColor = MyStyles.active;
  bool _isSelected = false;

  anon(value) {
    print('chanhed');
    setState(() {
      _selectedNetwork = value;
      _isSelected = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: _isSelected && _selectedNetwork != 'Select Network'
          ? _selectedColor
          : Colors.white,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.orange,
                  backgroundImage: null,
                ),
                MyStyles.horizontalSpaceZero,
                Text(
                  "BTC | Bitcoin",
                  style: MyStyles.bodyText,
                  textAlign: TextAlign.left,
                )
              ],
            ),
            Row(
              children: [
                // Text(
                //   "Network",
                //   style: MyStyles.bodyText,
                //   textAlign: TextAlign.left,
                // ),
                // MyStyles.horizontalSpaceZero,
                DropdownButton<String>(
                  hint: Text(_selectedNetwork),
                  icon: Icon(Icons.keyboard_arrow_down_outlined),
                  style: TextStyle(color: MyStyles.darkGrey),
                  onChanged: (a) {},
                  items: ['Select Network', 'ERC 20', 'BEP 20']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      onTap: () {
                        print(value);
                        anon(value);
                      },
                      value: value,
                      child: Text(
                        value,
                        style: MyStyles.bodyTextSmall,
                      ),
                    );
                  }).toList(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
