import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:sarpras/auth/components/authBottom.dart';
import 'package:sarpras/auth/components/authButton.dart';
import 'package:sarpras/auth/components/authErrorMessage.dart';
import 'package:sarpras/auth/components/authHeader.dart';
import 'package:sarpras/auth/components/socialCard.dart';
import 'package:sarpras/auth/forgot_password.dart';
import 'package:sarpras/auth/login_success.dart';
import 'package:sarpras/auth/sign_up.dart';
import 'package:sarpras/onboard/onboard.dart';
import 'package:sarpras/utils/constant.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);
  static String routeName = "/sign_in";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
            padding: EdgeInsets.only(left: 5),
            child: GestureDetector(
              onTap: (){
                Navigator.pushReplacement(context, MaterialPageRoute(
                    builder: (context) => OnBoard(),)
                );
              },
              child: Icon(
                CupertinoIcons.chevron_left,
                weight: 1.5,
                color: Color(0xFF968E8E),
                size: 20,
              ),
            )
        ),
        title: Text(
          "Sign In",
          style: TextStyle(
            color: Color(0xFF968E8E),
            fontSize: 15,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: AuthHeader(
        title: "Sign In",
        sub: "Complete your registration or continue with other platform",
        form: SignForm(),
      )
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
  final _usernameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _auth = FirebaseAuth.instance;
  bool _isLoading = false;
  String? email;
  String? password;
  String emailed = "sulthanwahyu70@gmail.com";
  String passworded = "12345678";
  String _error = '';

  void _submit() async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        _isLoading = true;
      });
      _formKey.currentState!.save();
      try {
        // UserCredential userCredential =
        // await _auth.signInWithEmailAndPassword(
        //   email: _emailController.text.trim(),
        //   password: _passwordController.text.trim(),
        // );
        // User? user = userCredential.user;
        Navigator.push(context, MaterialPageRoute(builder: (context) => LoginSuccess(),));
        // ignore: deprecated_member_use

        setState(() {
          _isLoading = false;
        });
      } on FirebaseAuthException catch (e) {
        setState(() {
          _isLoading = false;
        });
        String errorMessage;

        switch (e.code) {
          case 'user-not-found':
            errorMessage = 'User not found for that email.';
            break;
          case 'wrong-password':
            errorMessage = 'Invalid password.';
            break;
          case 'invalid-email':
            errorMessage = 'Invalid email address.';
            break;
          default:
            errorMessage = 'Email not found.';
            break;
        }

        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(errorMessage),
            backgroundColor: Colors.red,
          ),
        );
      } catch (e) {
        print(e);
      }
    }
  }
  bool remember = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 22,),
      child: Form(
          key: _formKey,
          child: Column(
            children: [
              emailFormField(),
              SizedBox(height: 30,),
              passwordTextFormField(),
              SizedBox(height: 12,),
              Row(
                children: [
                  Checkbox(
                      value: remember,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                      fillColor: MaterialStatePropertyAll(CusColors.grey100),
                      activeColor: CusColors.mainColor,
                      onChanged: (value){
                        setState(() {
                          remember = !remember;
                        });
                      },
                  ),
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        remember = !remember;
                      });
                    },
                    child: Text(
                        "Remember me",
                      style: TextStyle(
                        color: CusColors.grey300,
                        fontSize: 15,
                        letterSpacing: .2
                      ),
                    ),
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ForgotPassword()));},
                    child: Text(
                      "Forgot Password",
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: CusColors.mainColor,
                        fontSize: 15,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 18,),
              AuthButton(
                text: "Continue",
                onPressed: (){
                  _isLoading ? null : _submit();
                }
              ),
              Padding(padding: EdgeInsets.only(top: 42)),

              SocialCard(icon: "assets/icons/google.svg",),

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

  TextFormField passwordTextFormField() {
    return TextFormField(
      onChanged: (newValue)=>setState(() {
        password = newValue;
      }),
      validator: (value){
        if (value == null ||
            value.isEmpty) {
          return 'Please enter your password.';
        }
        if (value.length < 6) {
          return 'The password must be at least 6 characters long.';
        }
        if (value != passworded ) {
          return 'The password must be at least 6 characters long.';
        }
        return null;
      },
      obscureText: true,
      decoration: InputDecoration(
        hintText: "Enter your password",
        labelText: "Password",
        suffixIcon: Padding(
          padding: const EdgeInsets.only(right: 22),
          child: Icon(IconlyLight.lock, size: 28,),
        ),
        border: authInputBorder(),
        focusedBorder: activedAuthInputBorder(),
      ),
    );
  }

  TextFormField emailFormField() {
    return TextFormField(
      onChanged: (newValue) => setState(() {
        email = newValue;
      }),
      validator: (value){
        if (value!.isEmpty) {
          return 'Please enter an email address.';
        }
        if (!value.contains(emailValidatorRegExp)) {
          return 'Please enter a valid email address.';
        }
        if (value != emailed) {
          return 'Please enter a valid email address.';
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

