import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:sarpras/pages/profile/editprofile.dart';
import 'package:sarpras/utils/constant.dart';
import 'package:get/get.dart';

class Akuninfo extends StatelessWidget {
  const Akuninfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children:[
          Container(
            width: double.infinity,
            color: CusColors.whiteMain,
            padding: EdgeInsets.only(top: 40, bottom: 25),
            child: Stack(
              children: [
                Container(
                  width: double.infinity,
                  child: Column(
                    children: [
                      Text(
                          "Account Information",
                          style: TextStyle(
                            color: CusColors.titleColor,
                            fontSize: 16,
                            letterSpacing: .5,
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
                      SizedBox(
                        height: 10,
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
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: GestureDetector(
                    onTap: ()=> Get.back(),
                    child: Icon(
                      IconlyLight.arrow_left_2,
                      size: 22,
                      color: CusColors.titleColor,
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child:
              Container(
                padding: EdgeInsets.only(left: 8),
                child: ListView(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AccInfo(
                            context,
                            icon: IconlyLight.profile,
                            title: "Username",
                            content: "Raul Evans"
                        ),
                        AccInfo(
                            context,
                            icon: IconlyLight.message,
                            title: "Email",
                            content: "raul6@gmail.com"
                        ),
                        AccInfo(
                            context,
                            icon: IconlyLight.call,
                            title: "Phone number",
                            content: "+21 3152 8765"
                        ),
                        AccInfo(
                            context,
                            icon: IconlyLight.lock,
                            title: "Password",
                            content: "******"
                        ),
                        AccInfo(
                            context,
                            icon: IconlyLight.location,
                            title: "Address",
                            content: "Depok"
                        ),
                      ],
                    ),
                  ],
                ),
              ),
          ),
        ],
      ),
    );
  }

  Widget AccInfo(BuildContext context, {required icon, required title, required content}){
    return Container(
      child: ListTile(
        leading: Icon(
          icon,
          color: CusColors.mainColor,
          size: 26,
        ),
        horizontalTitleGap: -4,
        title: Text(
          title,
          style: TextStyle(
              fontFamily: "Poppins",
              fontSize: 16,
              color: CusColors.subTitleColor,
              letterSpacing: .5,
              fontWeight: FontWeight.w500
          ),
        ),
        subtitle: Text(
          content,
          style: TextStyle(
            fontFamily: "Poppins",
            fontSize: 13,
            fontWeight: FontWeight.w500,
            color: CusColors.titleColor,
          ),
        ),
      ),
    );
  }

}
