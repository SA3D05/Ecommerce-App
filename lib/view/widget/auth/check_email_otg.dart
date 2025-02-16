import 'package:flutter/material.dart';

import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class CheckEmailOtg extends StatelessWidget {
  final void Function(String)? onSubmit;
  const CheckEmailOtg({super.key, this.onSubmit});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: OtpTextField(
        numberOfFields: 3,
        fieldHeight: 50,
        fieldWidth: 60,
        margin: EdgeInsets.all(10),
        contentPadding: EdgeInsets.all(5),
        borderRadius: BorderRadius.circular(15),
        borderColor: Color(0xFF512DA8),
        //set to true to show as box or false to show as dash
        showFieldAsBox: true,
        enabledBorderColor: Colors.black,
        focusedBorderColor: Colors.black,
        disabledBorderColor: Colors.black,
        fillColor: Colors.black,
        //runs when a code is typed in
        onCodeChanged: (String code) {
          //handle validation or checks here
        },
        //runs when every textfield is filled
        onSubmit: onSubmit, // end onSubmit
      ),
    );
  }
}
