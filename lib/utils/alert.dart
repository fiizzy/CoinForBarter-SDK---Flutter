import 'package:flutter/material.dart';

showAlert(context) {
  return showDialog<void>(
    context: context,
    barrierDismissible: true, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('AlertDialog Title'),
        content: SingleChildScrollView(
          child: ListBody(
            children: const <Widget>[
              Text('TTerminate Transfer'),
              Text('Would you like to terminate the transfer initiated ?'),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            child: const Text('Terminate'),
            onPressed: () {
              Navigator.of(context).popAndPushNamed('/selectCurrency');
            },
          ),
        ],
      );
    },
  );
}
