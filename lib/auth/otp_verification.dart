import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sarpras/auth/components/authButton.dart';
import 'package:sarpras/auth/components/authHeader.dart';
import 'package:sarpras/auth/login_success.dart';
import 'package:sarpras/auth/sign_in.dart';
import 'package:sarpras/utils/constant.dart';


class OtpVerification extends StatelessWidget {
  const OtpVerification({Key? key}) : super(key: key);

  static String routeName = "/otp_verification";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
            padding: EdgeInsets.only(left: 5),
            child: GestureDetector(
              onTap: (){Navigator.of(context).pop();},
              child: Icon(
                CupertinoIcons.chevron_left,
                weight: 1.5,
                color: Color(0xFF968E8E),
                size: 20,
              ),
            )
        ),
        title: Text(
          "OTP Verification",
          style: TextStyle(
            color: Color(0xFF968E8E),
            fontSize: 15,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),

      body: OtpHeader(),
    );
  }
}

class OtpHeader extends StatefulWidget {
  const OtpHeader({Key? key}) : super(key: key);

  @override
  State<OtpHeader> createState() => _OtpHeaderState();
}

class _OtpHeaderState extends State<OtpHeader> {
  int count = 30;

  void initState(){
    super.initState();
    Timer.periodic(Duration(seconds: 1),(timer){
      setState(() {
        if(count >= 1){
          count--;
        }else{
          timer.cancel();
          setState(() {
            count = 00;
          });
        }
      });
    });
  }
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
                "OTP Verification",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 30,
                    color: CusColors.titleColor
                ),
              ),

              SizedBox(height: 10,),

              Container(
                padding: EdgeInsets.symmetric(horizontal: 70),
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: "We sent your code to +62 888 8888 **** this code will expired in",
                    style: TextStyle(
                        color: CusColors.grey200,
                        fontSize: 14
                    ),
                    children: <InlineSpan>[
                      TextSpan(
                        text: " 00:" + count.toString(),
                        style: TextStyle(
                          color: CusColors.pinkMain
                        )
                      )
                    ]
                  ),
                ),
              ),
              SizedBox(height: 100,),
              OtpForm(),
            ],
          ),
        )
      ],
    );;
  }
}


class OtpForm extends StatefulWidget {
  const OtpForm({Key? key}) : super(key: key);

  @override
  State<OtpForm> createState() => _OtpFormState();
}

class _OtpFormState extends State<OtpForm> {
  FocusNode? pin2FocusNode;
  FocusNode? pin3FocusNode;
  FocusNode? pin4FocusNode;

  @override
  void initState() {
    super.initState();
    pin2FocusNode = FocusNode();
    pin3FocusNode = FocusNode();
    pin4FocusNode = FocusNode();
  }

  @override
  void dispose() {
    super.dispose();
    pin2FocusNode!.dispose();
    pin3FocusNode!.dispose();
    pin4FocusNode!.dispose();
  }

  void nextField ({required String value, required FocusNode focusNode}){
    if(value.length == 1){
      focusNode.requestFocus();
    }
  }

  static GlobalKey<_OtpHeaderState> timer = GlobalKey();
  int? count = timer.currentState?.count;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 22),
      child: Form(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  otpFormField(
                    focus: true,
                    onChanged: pin2FocusNode,
                    end: false,
                  ),
                  otpFormField(
                    focus: false,
                    focusNode: pin2FocusNode,
                    onChanged: pin3FocusNode,
                    end: false,
                  ),
                  otpFormField(
                    focus: false,
                    focusNode: pin3FocusNode,
                    onChanged: pin4FocusNode,
                    end: false,
                  ),
                  otpFormField(
                    focus: false,
                    focusNode: pin4FocusNode,
                    end: true,
                  ),
                ],
              ),
              SizedBox(height: 100,),
              AuthButton(
                text: "Continue",
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute
                    (builder: (context) => SignIn(),)
                  );
                },
              ),
              SizedBox(height: 55,),
              GestureDetector(
                onTap: (){
                  timer.currentState?.initState();
                },
                child: Text(
                    "Resend OTP Code",
                  style: TextStyle(
                    letterSpacing: .2,
                    color: CusColors.mainColor,
                    decoration: TextDecoration.underline,
                  ),
                ),
              )
            ],
          ),

      ),
    );
  }
}

class otpFormField extends StatelessWidget {
  const otpFormField({
    super.key,
    required this.focus,
    this.focusNode,
    this.onChanged,
    required this.end,
  });

  final bool focus;
  final FocusNode? focusNode;
  final FocusNode? onChanged;
  final bool end;


  void nextField ({required String value, required FocusNode focusNode}){
    if(value.length == 1){
      focusNode.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 65,
      height: 65,
      child: TextFormField(
        autofocus: focus,
        focusNode: focusNode,
        obscureText: true,
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 27,),
        decoration: otpInputDecoration,
        onChanged: !end ? (value){nextField(value: value, focusNode: onChanged!);} : (value){focusNode!.unfocus();},
      ),
    );
  }
}

