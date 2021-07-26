import 'dart:convert';
import 'package:coinforbarter_flutter_sdk/models/config.dart';
import 'package:http/http.dart' as http;

class PostDataToAPI {
  Future postData(PaymentConfig config) async {
    var response;
    Map filteredConfig = {
      // "publicKey": "${config.publicKey}",
      "txRef": "${config.txRef}",
      "amount": "${config.amount}",
      "currency": "${config.meta}",
      "currencies": "${config.currencies}",
      "meta": "${config.meta}",
      "customer": "${config.customer}",
      "customerPhoneNumber": "${config.customerPhoneNumber}",
      "fullName": "${config.customerFullName}",
    };
    try {
      response = await http.post(
        Uri.parse('https://staging-api.coinforbarter.com/v1/payments'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization': '${config.publicKey}'
        },
        body: jsonEncode(filteredConfig),
      );

      print(jsonDecode(response.body));
      return jsonDecode(response.body);
    } catch (e) {
      print('the serice error: $e');
      return response;
    }
  }
}
