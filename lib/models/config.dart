class PaymentConfig {
  String? publicKey;
  String? txRef;
  dynamic amount;
  String? currency;
  List<String>? currencies;
  Map<String, dynamic>? meta;
  String? customer;
  String? customerPhoneNumber;
  String? customerFullName;
  Function(int statuscode, String message, dynamic data, Status)? callback;
}

enum Status {
  Success,
  Error,
}
