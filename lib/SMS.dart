import 'package:flutter/material.dart';
import 'package:flutter_sms/flutter_sms.dart';

void _sendSMS(String message, List<String> contacts) async {
  String _result = await sendSMS(message: message, recipients: contacts)
      .catchError((onError) {
    print(onError);
  });
  print(_result);
}
