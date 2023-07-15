import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:sarpras/auth/components/authBottom.dart';
import 'package:sarpras/auth/components/authButton.dart';
import 'package:sarpras/auth/components/authHeader.dart';
import 'package:sarpras/auth/sign_in.dart';
import 'package:sarpras/auth/sign_up.dart';
import 'package:sarpras/utils/constant.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  static String routeName = "/forgot_password";

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
          "Forgot Password",
          style: TextStyle(
            color: Color(0xFF968E8E),
            fontSize: 15,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),

      body: AuthHeader(
        title: "Forgot Password",
        sub: "Please enter your email & we will send you a link to return your account",
        form: SignForm(),
      ),
    );
  }
}

class SignForm extends StatefulWidget {
  const SignForm({Key? key}) : super(key: key);

  @override
  State<SignForm> createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  final _formKey = GlobalKey<FormState>();
  String? email;
  String? emailErrors = "yes";
  bool emailError = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 22),
      child: Form(
          child: Column(
            children: [
              SizedBox(height: 60,),
              emailFormField(),
              SizedBox(height: 95,),
              AuthButton(
                text: "Continue",
                onPressed: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SignIn()));
                },
              ),
              SizedBox(height: 25,),
              AuthBottom(
                text: "Doesn't have an account",
                spanText: " Sign Up here",
                navigateTo: SignUp(),
              )
            ],
          )
      ),
    );
  }

  TextFormField emailFormField() {
    return TextFormField(
      onSaved: (newValue) => email = newValue,
      validator: (value){
        if (value == null || value.isEmpty){
          setState(() {
            emailError = true;
            print('ys');
            print(emailError);
            emailErrors = emailNullError;
          });
        } else if(emailValidatorRegExp.hasMatch(value) ){
          setState(() {
            emailError = true;
            emailErrors = emailInvalidError;
          });
        }
        return null;
      },
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: "Enter your email",
        labelText: "Email",
        suffixIcon: Padding(
          padding: const EdgeInsets.only(right: 22),
          child: Icon(IconlyLight.message, size: 28,),
        ),
        border: authInputBorder(),
        focusedBorder: activedAuthInputBorder(),
      ),
    );
  }

}

