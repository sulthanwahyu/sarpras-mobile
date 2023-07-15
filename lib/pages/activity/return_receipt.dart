import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';
import 'package:sarpras/nav/nav.dart';
import 'package:sarpras/utils/constant.dart';
import 'package:sarpras/utils/constant.dart';
import 'package:sarpras/utils/constant.dart';
import 'package:sarpras/utils/constant.dart';

class ReturnReceipt extends StatelessWidget {
  const ReturnReceipt({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 38,left: 12,right: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Flexible(
              flex: 0,
              child: Container(
                child: Row(
                  children: <Widget>[
                    GestureDetector(
                      onTap: ()=>Get.back(),
                      child: Container(
                        padding: EdgeInsets.all(3),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          IconlyLight.arrow_left_2,
                          color: Color(0xff454545),
                          size: 20,
                        ),
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Text(
                        'Loan Receipt',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff454545)
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Flexible(
              flex: 3,
              child: ListView(
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 50, top: 30),
                    child: Column(
                      children: [
                        Image(
                          image: AssetImage("assets/logo.png"),
                          height: 220,
                        ),

                        SizedBox(height: 15,),

                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Wrap(
                            direction: Axis.horizontal,
                            spacing: 20,
                            children: [
                              Container(
                                child: Wrap(
                                  direction: Axis.vertical,
                                  spacing: 10,
                                  children: [
                                    Text(
                                        "User Info :",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        color: CusColors.titleColor,
                                        fontSize: 15
                                      ),
                                    ),
                                    Text(
                                        "Loan Id :",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        color: CusColors.titleColor,
                                        fontSize: 15
                                      ),
                                    ),
                                    Text(
                                        "Loan Date :",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        color: CusColors.titleColor,
                                        fontSize: 15
                                      ),
                                    ),
                                    Text(
                                        "Return Limit :",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        color: CusColors.titleColor,
                                        fontSize: 15
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                child: Wrap(
                                  direction: Axis.vertical,
                                  spacing: 20,
                                  children: [
                                    Text(
                                        "1234112",
                                      style: GoogleFonts.roboto(
                                        fontWeight: FontWeight.w500,
                                        color: CusColors.mainColor,
                                        fontSize: 13
                                      ),
                                    ),
                                    Text(
                                        "2141241",
                                      style: GoogleFonts.roboto(
                                        fontWeight: FontWeight.w500,
                                        color: CusColors.mainColor,
                                        fontSize: 13
                                      ),
                                    ),
                                    Text(
                                        "07-08-2023 10:12:19",
                                      style: GoogleFonts.roboto(
                                        fontWeight: FontWeight.w500,
                                        color: CusColors.mainColor,
                                        fontSize: 13
                                      ),
                                    ),
                                    Text(
                                        "11-08-2023 10:12:19",
                                      style: GoogleFonts.roboto(
                                        fontWeight: FontWeight.w500,
                                        color: CusColors.mainColor,
                                        fontSize: 13
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),

                        SizedBox(height: 130,),

                        Container(
                          width: double.infinity,
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Text(
                                    "* Show this receipt into sarpras to ended the loan",
                                  style: TextStyle(
                                    color: CusColors.grey100,
                                    fontSize: 10
                                  ),
                                ),
                              ),

                              Container(
                                width: double.infinity,
                                height: 50,
                                margin: EdgeInsets.only(top: 10),
                                child: ElevatedButton(
                                    onPressed: ()=>Get.to(Nav()),
                                    style: ButtonStyle(
                                      backgroundColor: MaterialStatePropertyAll(CusColors.buttonBg),
                                      shadowColor: MaterialStatePropertyAll(Colors.transparent),
                                      shape: MaterialStatePropertyAll(
                                        RoundedRectangleBorder(
                                          borderRadius: BorderRadiusDirectional.circular(6)
                                        )
                                      )
                                    ),
                                    child: Text("Back to Home")
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}
