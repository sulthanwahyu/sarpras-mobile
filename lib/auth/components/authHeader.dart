import 'package:flutter/material.dart';
import 'package:sarpras/utils/constant.dart';

class AuthHeader extends StatelessWidget {
  const AuthHeader({
    Key? key,
    this.title,
    this.sub,
    this.form
  }) : super(key: key);

  final String? title;
  final String? sub;
  final Widget? form;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          padding: EdgeInsets.only(top: 30),
          width: double.infinity,
          child: Column(
            children: [
              Text(
                title!,
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 30,
                    color: CusColors.titleColor
                ),
              ),

              SizedBox(height: 10,),

              Container(
                padding: EdgeInsets.symmetric(horizontal: 55),
                child: Text(
                  sub!,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: CusColors.grey200,
                      fontSize: 14
                  ),
                ),
              ),
              SizedBox(height: 40,),
              form!,

            ],
          ),
        )
      ],
    );
  }
}
