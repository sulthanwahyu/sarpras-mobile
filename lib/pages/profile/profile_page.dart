import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:sarpras/auth/sign_in.dart';
import 'package:sarpras/pages/profile/accountinfo.dart';
import 'package:sarpras/pages/profile/editprofile.dart';
import 'package:sarpras/utils/constant.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children:[
        Container(
          width: double.infinity,
          color: CusColors.whiteMain,
          padding: EdgeInsets.only(top: 40, bottom: 25),
          child: Column(
            children: [
              Text(
                  "Profile",
                  style: TextStyle(
                    color: CusColors.titleColor,
                    fontSize: 16,
                    letterSpacing: .8,
                    fontWeight: FontWeight.w500,
                  )
              ),
              SizedBox(
                height: 20,
              ),
              CircleAvatar(
                maxRadius: 65,
                backgroundImage: AssetImage('assets/raul.jpg'),
              ),
              SizedBox(
                height: 18,
              ),
              Text(
                "Sulthan Wahyu",
                style: TextStyle(
                  fontSize: 18,
                  color: CusColors.titleColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                  "sultanwahyu70@gmail.com",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: CusColors.subTitleColor,
                  fontSize: 13
                ),
              ),
              SizedBox(
                height: 18,
              ),
              SizedBox(
                width: 128,
                height: 40,
                child: ElevatedButton(
                    style: ButtonStyle(
                        shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                                side: BorderSide(width: .8, color: CusColors.buttonBg)
                            )
                        ),
                        shadowColor: MaterialStatePropertyAll(Colors.transparent),
                        backgroundColor: MaterialStateProperty.all(CusColors.whiteMain)
                    ),
                    onPressed: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Editprofile(),)
                      );
                    },
                    child: Text(
                      "Edit Profile",
                      style: TextStyle(
                        color: CusColors.mainColor,
                        fontSize: 12,
                      ),
                    )
                ),
              )
            ],
          ),
        ),
        Flexible(
          child: Container(
            padding: EdgeInsets.only(left: 2),
            child: ListView(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Akuninfo()));
                      },
                      child: Container(
                        child: ListTile(
                          leading: Icon(
                            IconlyLight.profile,
                            color: CusColors.titleColor,
                            size: 28,
                          ),
                          horizontalTitleGap: -4,
                          title: Text(
                            "Account Information",
                            style: TextStyle(
                                fontSize: 15,
                                color: CusColors.titleColor,
                                letterSpacing: .5,
                                fontWeight: FontWeight.w500
                            ),
                          ),
                          trailing: Container(
                            child: Icon(IconlyLight.arrow_right_2, color: CusColors.titleColor,),
                          ),
                        ),
                      ),
                    ),
                    Container(
                        width: 380,
                        padding: EdgeInsets.only(left: 20),
                        child: Divider()),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Akuninfo()));
                      },
                      child: Container(
                        child: ListTile(
                          leading: Icon(
                            IconlyLight.setting,
                            color: CusColors.titleColor,
                            size: 28,
                          ),
                          horizontalTitleGap: -4,
                          title: Text(
                            "Appearance",
                            style: TextStyle(
                                fontSize: 15,
                                color: CusColors.titleColor,
                                letterSpacing: .5,
                                fontWeight: FontWeight.w500
                            ),
                          ),
                          trailing: Container(
                            child: Icon(IconlyLight.arrow_right_2, color: CusColors.titleColor,),
                          ),
                        ),
                      ),
                    ),
                    Container(
                        width: 380,
                        padding: EdgeInsets.only(left: 20),
                        child: Divider()),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Akuninfo()));
                      },
                      child: Container(
                        child: ListTile(
                          leading: Icon(
                            CupertinoIcons.doc_plaintext,
                            color: CusColors.titleColor,
                            size: 28,
                          ),
                          horizontalTitleGap: -4,
                          title: Text(
                            "Loan History",
                            style: TextStyle(
                                fontSize: 15,
                                color: CusColors.titleColor,
                                letterSpacing: .5,
                                fontWeight: FontWeight.w500
                            ),
                          ),
                          trailing: Container(
                            child: Icon(IconlyLight.arrow_right_2, color: CusColors.titleColor,),
                          ),
                        ),
                      ),
                    ),
                    Container(
                        width: 380,
                        padding: EdgeInsets.only(left: 20),
                        child: Divider()),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Akuninfo()));
                      },
                      child: Container(
                        child: ListTile(
                          leading: Icon(
                            IconlyLight.info_circle,
                            color: CusColors.titleColor,
                            size: 28,
                          ),
                          horizontalTitleGap: -4,
                          title: Text(
                            "Report an issue",
                            style: TextStyle(
                                fontSize: 15,
                                color: CusColors.titleColor,
                                letterSpacing: .5,
                                fontWeight: FontWeight.w500
                            ),
                          ),
                          trailing: Container(
                            child: Icon(IconlyLight.arrow_right_2, color: CusColors.titleColor,),
                          ),
                        ),
                      ),
                    ),
                    Container(
                        width: 380,
                        padding: EdgeInsets.only(left: 20),
                        child: Divider()),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Akuninfo()));
                      },
                      child: Container(
                        child: ListTile(
                          leading: Icon(
                            CupertinoIcons.question_circle,
                            color: CusColors.titleColor,
                            size: 28,
                          ),
                          horizontalTitleGap: -4,
                          title: Text(
                            "FAQ",
                            style: TextStyle(
                                fontSize: 15,
                                color: CusColors.titleColor,
                                letterSpacing: .5,
                                fontWeight: FontWeight.w500
                            ),
                          ),
                          trailing: Container(
                            child: Icon(IconlyLight.arrow_right_2, color: CusColors.titleColor,),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: SizedBox(
                    height: 44,
                    child: ElevatedButton(
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                    side: BorderSide(width: .8, color: CusColors.buttonBg)
                                )
                            ),
                            shadowColor: MaterialStatePropertyAll(Colors.transparent),
                            backgroundColor: MaterialStateProperty.all(CusColors.appColor)
                        ),
                        onPressed: (){
                          showDialog(
                              context: context,
                              builder: (context){
                                return Theme(
                                  data: ThemeData.light(),
                                  child: CupertinoAlertDialog(
                                    title: Text(
                                        "Log Out",
                                      style: TextStyle(
                                        color: CusColors.mainColor
                                      ),
                                    ),
                                    content: Text(
                                        "Are you sure want to logout?"
                                    ),
                                    actions: [
                                      TextButton(
                                          onPressed: (){
                                            Navigator.of(context).pop('dialog');
                                          },
                                          child: Text("Cancel")
                                      ),
                                      TextButton(
                                          onPressed: (){
                                            Navigator.pushReplacement(context, MaterialPageRoute(
                                                builder: (context) => SignIn(),
                                            ));
                                          },
                                          child: Text(
                                            "Log Out",
                                            style: TextStyle(
                                                color: Colors.redAccent
                                            ),
                                          )
                                      )
                                    ],
                                  ),
                                );
                              }
                          );
                        },
                        child: Text(
                          "Log Out",
                          style: TextStyle(
                            color: CusColors.mainColor,
                            fontSize: 13,
                          ),
                        )
                    ),
                  ),
                ),
                SizedBox(height: 90,)
              ],
            ),
          ),
        ),
      ],
    );
  }
}
