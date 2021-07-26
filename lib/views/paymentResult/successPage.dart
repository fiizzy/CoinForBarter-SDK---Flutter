import 'package:flutter/material.dart';

class StatusMessage extends StatefulWidget {
  const StatusMessage({Key? key}) : super(key: key);

  @override
  _StatusMessageState createState() => _StatusMessageState();
}

class _StatusMessageState extends State<StatusMessage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child:
          Text('This is the status after payment, could be error or success'),
    ));
  }
}
