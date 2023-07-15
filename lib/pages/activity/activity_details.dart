import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';
import 'package:sarpras/pages/activity/return_receipt.dart';
import 'package:sarpras/pages/receipt.dart';
import 'package:sarpras/utils/constant.dart';
import 'package:get/get.dart';

class ActivityDetails extends StatelessWidget {
  const ActivityDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 38, left: 15, right: 15),
        color: const Color(0xffE9E9E9),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: ()=>Get.back(),
                  child: Container(
                    child: const Icon(
                      Icons.arrow_back_ios_new,
                      size: 11.0,
                    ),
                  ),
                ),
                const Spacer(),
                const Text(
                  "Showing details",
                  style: TextStyle(
                    color: Color(0xffAFA8A8),
                  ),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: ()=>Get.to(ReturnReceipt()),
                  child: Container(
                    margin: const EdgeInsets.only(right: 15),
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(175, 168, 168, 0.1),
                      borderRadius: BorderRadius.all(
                        Radius.circular(100.0),
                      ),
                    ),
                    width: 30,
                    height: 30,
                    child: Icon(
                      IconlyLight.document,
                      size: 14,
                      color: CusColors.mainColor,
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
                child: ListView(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 14),
                      child: const Text(
                        "Pinjem bentar ajah #1",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          letterSpacing: .5,
                        ),
                      ),
                    ),
                    Divider(
                      color: const Color(0xff968E91).withOpacity(0.3),
                      thickness: 1,
                      indent: 2,
                      endIndent: 100,
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 8, left: 14),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                      "Loan id  :",
                                    style: TextStyle(
                                      color: CusColors.subTitleColor,
                                      fontWeight: FontWeight.w500
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                      "124321112",
                                    style: GoogleFonts.inter(
                                      color: CusColors.mainColor,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Started  :",
                                    style: TextStyle(
                                        color: CusColors.subTitleColor,
                                        fontWeight: FontWeight.w500
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "07-08-2023",
                                    style: GoogleFonts.inter(
                                      color: CusColors.mainColor,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Receipt  :",
                                    style: TextStyle(
                                        color: CusColors.subTitleColor,
                                        fontWeight: FontWeight.w500
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Container(
                                    width: 25,
                                    height: 25,
                                    decoration: BoxDecoration(
                                      color: const Color(0xffAFA8A8).withOpacity(0.1),
                                      borderRadius: const BorderRadius.all(
                                        Radius.circular(12.0),
                                      ),
                                    ),
                                    child: GestureDetector(
                                      onTap: ()=>Get.to(ReturnReceipt()),
                                      child: Icon(
                                        IconlyLight.document,
                                        size: 14.0,
                                        color: CusColors.mainColor,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 40,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Status  :",
                                    style: TextStyle(
                                        color: CusColors.subTitleColor,
                                        fontWeight: FontWeight.w500
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "ongoing",
                                    style: TextStyle(
                                      color: CusColors.mainColor,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Return limit  :",
                                    style: TextStyle(
                                        color: CusColors.subTitleColor,
                                        fontWeight: FontWeight.w500
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "11-08-2023",
                                    style: GoogleFonts.inter(
                                      color: CusColors.mainColor,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    Divider(
                      color: const Color(0xff968E91).withOpacity(0.3),
                      thickness: 1,
                      indent: 2,
                      endIndent: 100,
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Items that you loan",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff496956),
                            ),
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              recent(
                                  context,
                                  image: "assets/ae.png",
                                  category: "Projector",
                                  name: "Acer Essentials Projector"
                              ),
                              recent(
                                  context,
                                  image: "assets/ae.png",
                                  category: "Projector",
                                  name: "Acer Essentials Projector"
                              ),
                              recent(
                                  context,
                                  image: "assets/ae.png",
                                  category: "Projector",
                                  name: "Acer Essentials Projector"
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              recent(
                                  context,
                                  image: "assets/ae.png",
                                  category: "Projector",
                                  name: "Acer Essentials Projector"
                              ),
                              SizedBox(width: 7,),
                              recent(
                                  context,
                                  image: "assets/ae.png",
                                  category: "Projector",
                                  name: "Acer Essentials Projector"
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                )
            ),
            Divider(
              color: const Color(0xff968E91).withOpacity(0.3),
              thickness: 1,
              indent: 0,
              endIndent: 0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                          "Status : ",
                        style: TextStyle(
                          color: CusColors.subTitleColor,
                          fontWeight: FontWeight.w500
                        ),
                      ),
                      Text(
                          " ongoing",
                        style: TextStyle(
                          color: CusColors.mainColor,
                          fontWeight: FontWeight.w500
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                          "Remaining : ",
                        style: TextStyle(
                          color: CusColors.subTitleColor,
                          fontWeight: FontWeight.w500
                        ),
                      ),
                      Text(
                          " 12:08:26",
                        style: TextStyle(
                          color: CusColors.mainColor,
                          fontWeight: FontWeight.w500
                        ),
                      )
                    ],
                  ),

                ],
              ),
            ),
            Divider(
              color: const Color(0xff968E91).withOpacity(0.3),
              thickness: 1,
              indent: 10,
              endIndent: 10,
            ),
            SizedBox(
              width: 390,
              height: 50,
              child: ElevatedButton(
                onPressed: ()=>Get.to(ReturnReceipt()),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff6B9A7E),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
                child: const Text(
                  'Proceed to return',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10,)
          ],
        ),
      ),
    );
  }

  Widget recent(BuildContext context,
      {required image, required category, required name}) {
    return Container(
      color: Color(0xFFDADADA).withOpacity(0.25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
              alignment: Alignment.center,
              children:[
                Container(
                  width: 115,
                  height: 115,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color(0xFFDDD6D6),
                            Color(0xFFd9d9d9)
                          ]
                      )
                  ),
                ),
                Container(
                  width: 95,
                  height: 95,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(image!)
                      )
                  ),
                )
              ]
          ),
          Container(
            width: 115,
            padding: EdgeInsets.symmetric(horizontal: 2, vertical: 1),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  category.toString(),
                  style: TextStyle(
                      color: CusColors.subTitleColor,
                      fontSize: 10
                  ),
                ),
                Container(
                  width: 115,
                  child: Text(
                    name.toString(),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: CusColors.titleColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 13,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10,)
        ],
      ),
    );
  }

}