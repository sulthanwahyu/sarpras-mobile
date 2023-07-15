import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:sarpras/auth/components/authButton.dart';
import 'package:sarpras/nav/nav.dart';
import 'package:sarpras/pages/home/home_page.dart';
import 'package:sarpras/utils/constant.dart';

class LoginSuccess extends StatefulWidget {
  const LoginSuccess({Key? key}) : super(key: key);
  static String routeName = "/login_success";
  @override
  State<LoginSuccess> createState() => _LoginSuccessState();
}

class _LoginSuccessState extends State<LoginSuccess> {
  int count = 5;

  void initState(){
    super.initState();
    Timer.periodic(Duration(seconds: 1),(timer){
      setState(() {
        if(count >= 1){
          count--;
        }else{
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Nav()));
        }
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Login Successful",
          style: TextStyle(
            color: Color(0xFF968E8E),
            fontSize: 15,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),

      body: ListView(
        children: [
          Container(
            transform: Matrix4.translationValues(0, -25, 0),
            width: double.infinity,
            child: Column(
              children: [
                Lottie.network("https://assets8.lottiefiles.com/packages/lf20_w5oe9omf.json",height: 400),
                Container(
                  transform: Matrix4.translationValues(0, -30, 0),
                  child: Text(
                      "Login Successful",
                    style: TextStyle(
                      color: CusColors.titleColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 26
                    ),
                  ),
                ),
                SizedBox(height: 30,),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 22),
                  child: AuthButton(
                    text: "Go to Home",
                    onPressed: (){
                      Navigator.pushReplacement(context, MaterialPageRoute(
                          builder: (context) => HomePage(),)
                      );
                    },
                  ),
                ),
                SizedBox(height: 30,),
                RichText(
                  textAlign: TextAlign.center,
                    text: TextSpan(
                      text: "Auto redirecting to home in ",
                      style: TextStyle(
                        color: CusColors.grey300,
                      ),
                      children: <InlineSpan>[
                        TextSpan(
                          text: count.toString() + ' seconds'
                        )
                      ]
                    )
                )
              ],
            ),
          )
        ],
      ),

    );
  }
}
