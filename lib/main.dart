import 'package:coinforbarter_flutter_sdk/styles/style.dart';
import 'package:coinforbarter_flutter_sdk/views/paymentPreview/paymentPreview.dart';
import 'package:coinforbarter_flutter_sdk/views/selectCurrency/selectCurrency.dart';
import 'package:coinforbarter_flutter_sdk/widgets/button.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomePage(title: 'CoinForBarter SDK'),
        '/selectCurrency': (context) => SelectCurrency(),
        '/paymentPreview': (context) => PaymentPreview(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
                child: CustomButton(
              route: '/selectCurrency',
            )),
            MyStyles.verticalSpaceZero,
            CustomButton(route: '/selectCurrency'),
          ],
        ));
  }
}
