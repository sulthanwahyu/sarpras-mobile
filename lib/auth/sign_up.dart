import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:sarpras/auth/components/authBottom.dart';
import 'package:sarpras/auth/components/authButton.dart';
import 'package:sarpras/auth/components/authErrorMessage.dart';
import 'package:sarpras/auth/components/authHeader.dart';
import 'package:sarpras/auth/components/socialCard.dart';
import 'package:sarpras/auth/set_profile.dart';
import 'package:sarpras/utils/constant.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  static String routeName = "/sign_up";

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
          "Sign Up",
          style: TextStyle(
            color: Color(0xFF968E8E),
            fontSize: 15,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),

      body: AuthHeader(
        title: "Create Account",
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
  String _error = '';

  void _submit() async {
    print(password);
    print(cPassword);
    if (_formKey.currentState!.validate()) {
      setState(() {
        _isLoading = true;
      });
      _formKey.currentState!.save();
      try {
        UserCredential userCredential =
        await _auth.createUserWithEmailAndPassword(
            email: _emailController.text.trim(),
            password: _passwordController.text.trim());
        User? user = userCredential.user;
        await _auth.signInWithEmailAndPassword(
            email: _emailController.text.trim(),
            password: _passwordController.text.trim(),
        );
        Navigator.push(context, MaterialPageRoute(builder: (context) => SetProfile(email: email!, password: password!),));
        // ignore: deprecated_member_use
        user?.updateProfile(displayName: _usernameController.text);

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
            errorMessage = 'An undefined error occurred.';
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

  String? email;
  String? password;
  String? cPassword;
  bool emailError = false;
  String? emailErrors = "yes";
  bool remember = false;
  final List<String> passwordErrors = [];

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 22),
      child: Form(
          key: _formKey,
          child: Column(
            children: [
              emailTextFormField(),
              // AuthErrorMessage(text:"please input your first name"),
              SizedBox(height: 30,),
              passwordTextFormField(),
              SizedBox(height: 30,),
              cPasswordTextFormField(),
              SizedBox(height: 32,),
              _isLoading
                  ? CircularProgressIndicator()
                  : AuthButton(
                text: "Continue",
                onPressed: () {
                  _isLoading ? null : _submit();
                },
              ),

              Padding(padding: EdgeInsets.only(top: 42)),

              SocialCard(
                icon: "assets/icons/google.svg",
                press: (){},
              ),

              AuthBottom(
                text: "By continuing your confirm that you agree with our",
                spanText: " Terms & Conditions",
                navigateTo: SignUp(),
              ),

              SizedBox(height: 10,)
            ],
          )
      ),
    );
  }

  TextFormField emailTextFormField() {
    return TextFormField(
      onChanged: (newValue) => setState(() {
        email = newValue;
      }),
      controller: _emailController,
      keyboardType:
      TextInputType.emailAddress,
      validator: (value) {
        if (value!.isEmpty) {
          return 'Please enter an email address.';
        }
        if (!value.contains(emailValidatorRegExp)) {
          return 'Please enter a valid email address.';
        }
        return null;
      },
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

  TextFormField passwordTextFormField() {
    return TextFormField(
      onChanged: (newValue) => setState(() {
        password = newValue;
      }),
      controller: _passwordController,
      obscureText: true,
      validator: (value) {
        if (value == null ||
            value.isEmpty) {
          return 'Please enter your password.';
        }
        if (value.length < 6) {
          return 'The password must be at least 6 characters long.';
        }
        return null;
      },
      obscuringCharacter: "*",
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
  TextFormField cPasswordTextFormField() {
    return TextFormField(
      onChanged: (newValue) => setState(() {
        cPassword = newValue;
      }),
      obscureText: true,
      validator: (value) {
        if (value == null ||
            value.isEmpty) {
          return 'Please enter your password.';
        }
        if (value.length < 6) {
          return 'The password must be at least 6 characters long.';
        }
        if(value != password){
          return "Password doesn't match";
        }
        return null;
      },
      obscuringCharacter: "*",
      decoration: InputDecoration(
        hintText: "Re-enter your password",
        labelText: "Confirm Password",
        suffixIcon: Padding(
          padding: const EdgeInsets.only(right: 22),
          child: Icon(IconlyLight.lock, size: 28,),
        ),
        border: authInputBorder(),
        focusedBorder: activedAuthInputBorder(),
      ),
    );
  }
}



