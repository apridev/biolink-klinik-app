import 'package:biolink_klinik_app/template.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CekKodeOtp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      height: 50,
      width: 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12), color: inputTextColor2),
      child: TextFormField(
        keyboardType: TextInputType.number,
        inputFormatters: [LengthLimitingTextInputFormatter(1)],
        decoration: InputDecoration.collapsed(),
      ),
    );
  }
}
