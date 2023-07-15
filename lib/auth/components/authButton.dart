import 'package:flutter/material.dart';
import 'package:sarpras/utils/constant.dart';

class AuthButton extends StatelessWidget {
  const AuthButton({
    Key? key,
    this.text,
    this.onPressed,
  }) : super(key: key);

  final String? text;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 55,
      child: ElevatedButton(
          style: ButtonStyle(
              shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
              backgroundColor: MaterialStatePropertyAll(CusColors.mainColor)
          ),
          onPressed: onPressed,
          child: Text(
           text!,
            style: TextStyle(
              letterSpacing: 1,
            ),
          )
      ),
    );
  }
}
