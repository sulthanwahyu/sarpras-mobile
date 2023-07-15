import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:sarpras/pages/profile/accountinfo.dart';
import 'package:get/get.dart';
import 'package:sarpras/pages/profile/profile_page.dart';
import 'package:sarpras/utils/constant.dart';

class Editprofile extends StatefulWidget {
  const Editprofile({super.key});

  @override
  State<Editprofile> createState() => _EditprofileState();
}

class _EditprofileState extends State<Editprofile> {
  late FocusNode _focusNode;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  void _requestFocus(){
    setState(() {
      FocusScope.of(context).requestFocus(_focusNode);
    });
  }

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
                          "Edit Profile",
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
                padding: EdgeInsets.only(left: 5),
                child: ListView(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        EditForm(
                            context,
                            icon: IconlyLight.profile,
                            title: "Username",
                            hint: "Sulthan Wahyu"
                        ),
                        EditForm(
                            context,
                            icon: IconlyLight.message,
                            title: "Email",
                            hint: "sulthanwahyu70@gmail.com"
                        ),
                        EditForm(
                            context,
                            icon: IconlyLight.call,
                            title: "Phone number",
                            hint: "+21 3152 8765"
                        ),
                        EditForm(
                            context,
                            icon: IconlyLight.lock,
                            title: "Password",
                            hint: "******"
                        ),
                        EditForm(
                            context,
                            icon: IconlyLight.location,
                            title: "Address",
                            hint: "Indonesia, Jawa Barat, Depok"
                        ),

                        Container(
                          margin: EdgeInsets.only(top: 8.0),
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: 140,
                                child: ElevatedButton(
                                    onPressed: (){},
                                    style: ButtonStyle(
                                      backgroundColor: MaterialStatePropertyAll(Color(0xFFD2D2D2)),
                                      shadowColor: MaterialStatePropertyAll(Colors.transparent),
                                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),

                                    ),
                                    child: Text(
                                      "Discard Changes",
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: CusColors.titleColor
                                      ),
                                    )
                                ),
                              ),
                              SizedBox(
                                width: 140,
                                child: ElevatedButton(
                                    onPressed: ()=>Get.to(Akuninfo()),
                                    style: ButtonStyle(
                                      backgroundColor: MaterialStatePropertyAll(CusColors.buttonBg),
                                      shadowColor: MaterialStatePropertyAll(Colors.transparent),
                                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)))
                                    ),
                                    child: Text(
                                      "Save Changes",
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: kwhite
                                      ),
                                    )
                                ),
                              ),
                            ],
                          ),
                        )
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

  Widget EditForm(BuildContext context, {required icon, required title, required hint, controller, hide}){
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      child: ListTile(
        horizontalTitleGap: -6,
        leading: Container(
          transform: Matrix4.translationValues(0, -10, 0),
          child: Icon(
            icon,
            size: 26,
            color: CusColors.mainColor,
          ),
        ),
        title: TextFormField(
          controller: controller,
          decoration: InputDecoration(
            border: UnderlineInputBorder(
                borderSide: BorderSide(color: CusColors.subTitleColor)
            ),
            hintText: hint,
            contentPadding: EdgeInsets.symmetric(horizontal: 6, vertical: 5),
            focusColor: CusColors.mainColor,
            focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: CusColors.mainColor)
            ),
            labelText: title,
            labelStyle: TextStyle(
                color: CusColors.subTitleColor,
                fontWeight: FontWeight.w500,
                fontSize: 22
            ),
            hintStyle: TextStyle(
                fontSize: 14,
                color: CusColors.grey300
            ),
          ),
        ),
      ),
    );
  }

}
