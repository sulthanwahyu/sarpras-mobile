import 'package:country_picker/country_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:provider/provider.dart';
import 'package:sarpras/auth/auth_provider.dart';
import 'package:sarpras/auth/components/authBottom.dart';
import 'package:sarpras/auth/components/authButton.dart';
import 'package:sarpras/auth/components/authHeader.dart';
import 'package:sarpras/auth/otp_verification.dart';
import 'package:sarpras/auth/sign_up.dart';
import 'package:sarpras/utils/constant.dart';

class SetProfile extends StatelessWidget {
  final String email;
  final String password;
  const SetProfile({Key? key, required this.email, required this.password}) : super(key: key);

  static String routeName = "/set_profile";
  @override
  Widget build(BuildContext context) {
    print(email);
    print(password);
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
        title: "Complete Profile",
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
  final _usernameController = TextEditingController();
  final _locationController = TextEditingController();
  final _phoneController = TextEditingController();

  Country selectedCountry = Country(
      phoneCode: "62",
      countryCode: "ID",
      e164Sc: 0,
      geographic: true,
      level: 1,
      name: "Indonesia",
      example: "Indonesia",
      displayName: "Indonesia",
      displayNameNoCountryCode: "ID",
      e164Key: ""
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 22),
      child: Form(
          child: Column(
            children: [
              fTextFormField(),
              SizedBox(height: 30,),
              lTextFormField(),
              SizedBox(height: 30,),
              pNumTextFormField(),
              SizedBox(height: 35,),
              AuthButton(
                text: "Continue",
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) => OtpVerification(),)
                  );
                },
              ),
              SizedBox(height: 30,),
              AuthBottom(
                text: "By continuing your confirm that you agree with our",
                spanText: " Terms & Conditions",
                navigateTo: OtpVerification(),
              ),
            ],
          )
      ),
    );
  }

  TextFormField fTextFormField() {
    return TextFormField(
      validator: (value){
        return null;
      },
      controller: _usernameController,
      keyboardType: TextInputType.name,
      decoration: InputDecoration(
        hintText: "Enter your username",
        labelText: "Username",
        suffixIcon: Padding(
          padding: const EdgeInsets.only(right: 22),
          child: Icon(IconlyLight.profile, size: 28,),
        ),
        border: authInputBorder(),
        focusedBorder: activedAuthInputBorder(),
      ),
    );
  }

  TextFormField lTextFormField() {
    return TextFormField(
      validator: (value){
        return null;
      },
      controller: _locationController,
      keyboardType: TextInputType.name,
      decoration: InputDecoration(
        hintText: "Enter your address",
        labelText: "Address",
        suffixIcon: Padding(
          padding: const EdgeInsets.only(right: 22),
          child: Icon(IconlyLight.location, size: 28,),
        ),
        border: authInputBorder(),
        focusedBorder: activedAuthInputBorder(),
      ),
    );
  }

  TextFormField pNumTextFormField() {
    return TextFormField(

      validator: (value){
        return null;
      },
      controller: _phoneController,
      keyboardType: TextInputType.phone,
      decoration: InputDecoration(
        hintText: "Enter your phone number",
        labelText: "Phone Number",
        suffixIcon: Padding(
          padding: const EdgeInsets.only(right: 22),
          child: Icon(IconlyLight.call, size: 28,),
        ),
        border: authInputBorder(),
        focusedBorder: activedAuthInputBorder(),
        prefixIcon: Container(
          padding: EdgeInsets.all(15),
          child: InkWell(
            onTap: (){
              showCountryPicker(
                  context: context,
                  countryListTheme: CountryListThemeData(
                    bottomSheetHeight: 400,
                    padding: EdgeInsets.only(top: 10)
                  ),
                  onSelect: (value){
                    setState(() {
                    selectedCountry = value;
                    });
                  });
            },
            child: Text(
                "${selectedCountry.flagEmoji} + ${selectedCountry.phoneCode}",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                color: CusColors.titleColor,
                fontSize: 15
              ),
            ),
          ),
        )
      ),
    );
  }

  void sendPNumber(){
    final ap = Provider.of<AuthProvider>(context, listen: false);
    String phoneNumber = _phoneController.text.trim();
  }

}
