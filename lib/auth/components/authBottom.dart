import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:sarpras/utils/constant.dart';

class AuthBottom extends StatelessWidget {
  const AuthBottom({
    Key? key,
    this.text,
    this.spanText,
    this.navigateTo,
  }) : super(key: key);

  final String? text;
  final String? spanText;
  final Widget? navigateTo;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10  ),
      child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
              text: text!,
              style: TextStyle(
                color: CusColors.grey300,
                height: 1.5,
              ),
              children: <InlineSpan>[
                TextSpan(
                    text: spanText!,
                    recognizer: TapGestureRecognizer()..onTap = ()=> Navigator.push(context,
                        MaterialPageRoute(builder: (context)=> navigateTo!)),
                    style: TextStyle(
                        color: CusColors.mainColor,
                        fontWeight: FontWeight.w500,
                    )
                )
              ]
          )),
    );
  }
}
