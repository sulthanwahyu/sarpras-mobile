import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:sarpras/utils/constant.dart';

class AuthErrorMessage extends StatelessWidget {
  const AuthErrorMessage({
    Key? key,
    this.text,
  }) : super(key: key);

  final String? text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 11, top: 4, bottom: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(IconlyLight.info_circle, size: 25, color: CusColors.pinkMain,),
          SizedBox(width: 3,),
          Text(
            text!,
            style: TextStyle(
                color: CusColors.pinkMain,
                fontSize: 13,
                letterSpacing: .2,
                fontWeight: FontWeight.w500
            ),
          )
        ],
      ),
    );
  }
}
