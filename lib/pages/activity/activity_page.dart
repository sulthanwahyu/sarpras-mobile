import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:sarpras/pages/activity/activity_details.dart';
import 'package:sarpras/pages/cart.dart';
import 'package:sarpras/pages/details.dart';
import 'package:sarpras/pages/notification.dart';
import 'package:sarpras/utils/constant.dart';
import 'package:get/get.dart';

class ActivityPage extends StatelessWidget {
  const ActivityPage({super.key});

  @override
  Widget build(BuildContext context) {
      return Container(
        height: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 32),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(left: 8),
                      child: Text(
                        "Activity",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: CusColors.titleColor,
                            fontSize: 18
                        ),
                      ),
                    ),
                    Container(
                      width: 110,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(
                                builder: (context) => Cart(),)
                              );
                            },
                            child: Stack(
                                children:[
                                  Container(
                                    width: 48,
                                    height: 48,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: CusColors.grey100.withOpacity(0.1),
                                    ),
                                    child: Icon(
                                      IconlyLight.bag,
                                      color: CusColors.titleColor,
                                      size: 26,
                                    ),
                                  ),
                                  Positioned(
                                    right: 0,
                                    child: Container(
                                      width: 15,
                                      height: 15,
                                      alignment: Alignment.center,
                                      transform: Matrix4.translationValues(1, -1, 0),
                                      child: Text("5", style: TextStyle(color: Colors.white,fontSize: 9, fontWeight: FontWeight.w500),),
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: CusColors.pinkMain
                                      ),
                                    ),
                                  )
                                ]
                            ),
                          ),
                          GestureDetector(
                            onTap: (){Navigator.push(context, MaterialPageRoute(
                              builder: (context) => NotificationPage(),
                            ));},
                            child: Stack(
                                children:[
                                  Container(
                                    width: 45,
                                    height: 45,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: CusColors.grey100.withOpacity(0.1),
                                    ),
                                    child: Icon(
                                      IconlyLight.notification,
                                      color: CusColors.titleColor,
                                      size: 26,
                                    ),
                                  ),
                                  Positioned(
                                    right: 0,
                                    child: Container(
                                      width: 15,
                                      height: 15,
                                      alignment: Alignment.center,
                                      transform: Matrix4.translationValues(1, -1, 0),
                                      child: Text("4", style: TextStyle(color: Colors.white,fontSize: 9, fontWeight: FontWeight.w500),),
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: CusColors.pinkMain
                                      ),
                                    ),
                                  )
                                ]
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              Expanded(
                  child: ListView(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            child: Text(
                              "ongoing loan - 1",
                              style: TextStyle(
                                color: CusColors.subTitleColor,
                                fontWeight: FontWeight.w500
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: Container(
                              width: double.infinity,
                              height: 150,
                              decoration: BoxDecoration(
                                  color: Color.fromRGBO(225, 222, 222, 100),
                                  borderRadius: BorderRadius.circular(20)),
                              child: Row(
                                  children: [
                                    CircularPercentIndicator(
                                      radius: 55,
                                      lineWidth: 3,
                                      percent: .4,
                                      progressColor: CusColors.mainColor,
                                      backgroundColor: CusColors.grey100,
                                      center: Container(
                                          padding: EdgeInsets.all(20),
                                          child: Image(
                                              image: AssetImage("assets/ae.png")
                                          )
                                      ),
                                    ),

                                    SizedBox(width: 14,),

                                    Container(
                                      padding: EdgeInsets.only(top: 25),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(left: 4),
                                            child: Text(
                                              "#124321112",
                                              style: TextStyle(
                                                  fontSize: 8,
                                                  color: CusColors.mainColor,
                                                  fontWeight: FontWeight.w500
                                              ),
                                            ),
                                          ),
                                          Row(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Pinjem bentar ajah #1",
                                                style: GoogleFonts.inter(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 16,
                                                    color: CusColors.titleColor
                                                ),
                                              ),
                                              Icon(
                                                IconlyLight.edit_square,
                                                size: 9,
                                                color: CusColors.mainColor,
                                              ),
                                            ],
                                          ),

                                          SizedBox(height: 3,),

                                          Row(
                                            children: [
                                              Text(
                                                "Started : ",
                                                style: TextStyle(
                                                    fontSize: 8,
                                                    fontWeight: FontWeight.w500,
                                                    color: CusColors.mainColor
                                                ),
                                              ),
                                              Text(
                                                  "2 days ago",
                                                style: TextStyle(
                                                    fontSize: 8,
                                                    color: CusColors.mainColor
                                                ),
                                              )
                                            ],
                                          ),

                                          SizedBox(height: 20,),

                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              SizedBox(
                                                width: 160,
                                                height: 25,
                                                child: ElevatedButton(
                                                  onPressed: () {
                                                    Get.to(ActivityDetails());
                                                  },
                                                  style: ElevatedButton.styleFrom(
                                                    backgroundColor:
                                                    Color.fromRGBO(225, 222, 222, 100),
                                                    shadowColor: Colors.transparent,
                                                    side: BorderSide(
                                                        color: CusColors.mainColor
                                                    ),
                                                    shape: RoundedRectangleBorder(
                                                        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(6), topLeft: Radius.circular(6))),
                                                  ),
                                                  child: Text(
                                                    "Details",
                                                    style: TextStyle(
                                                        fontSize: 10,
                                                        fontWeight: FontWeight.w500,
                                                        color: CusColors.mainColor
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                width: 50,
                                                height: 25,
                                                child: ElevatedButton(
                                                    onPressed: () {},
                                                    style: ElevatedButton.styleFrom(
                                                      backgroundColor: CusColors.mainColor,
                                                      shadowColor: Colors.transparent,
                                                      shape: RoundedRectangleBorder(
                                                          borderRadius: BorderRadius.only(topRight: Radius.circular(6), bottomRight: Radius.circular(6))),
                                                    ),
                                                    child: Icon(
                                                      CupertinoIcons.clear,
                                                      size: 12,
                                                    )),
                                              ),
                                            ],
                                          ),

                                          SizedBox(height: 5,),

                                          Container(
                                            width: 210,
                                            alignment: Alignment.centerRight,
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.end,
                                              children: [
                                                Text(
                                                  "Status : ",
                                                  style: TextStyle(
                                                    color: CusColors.mainColor,
                                                    fontSize: 9,
                                                    fontWeight: FontWeight.w500
                                                  ),
                                                ),
                                                Text(
                                                  "ongoing",
                                                  style: TextStyle(
                                                      color: CusColors.mainColor,
                                                      fontSize: 9,
                                                  ),
                                                )
                                              ],
                                            )
                                          ),
                                        ],
                                      ),
                                    )
                              ]),
                            ),
                          ),

                          Container(
                            padding: EdgeInsets.only(right: 270, top: 20),
                            child: Text(
                              "wishlist - 4",
                              style: TextStyle(
                                  color: CusColors.subTitleColor,
                                  fontWeight: FontWeight.w500
                              ),
                            ),
                          ),

                          SizedBox(height: 10,),

                          Wrap(
                            direction: Axis.horizontal,
                            spacing: 10,
                            children: [
                              recent(
                                  context,
                                  image: "assets/ae.png",
                                  category: "Projector",
                                  name: "Acer Essentials Projector",
                                  stock: 3
                              ),recent(
                                  context,
                                  image: "assets/ae.png",
                                  category: "Projector",
                                  name: "Acer Essentials Projector",
                                  stock: 3
                              ),recent(
                                  context,
                                  image: "assets/ae.png",
                                  category: "Projector",
                                  name: "Acer Essentials Projector",
                                  stock: 3
                              ),recent(
                                  context,
                                  image: "assets/ae.png",
                                  category: "Projector",
                                  name: "Acer Essentials Projector",
                                  stock: 3
                              ),
                            ],
                          ),
                          SizedBox(height: 50,)
                        ],
                      )
                    ],
                  )
              )
            ],
          ),
      );
  }

  Widget recent(BuildContext context,
      {required image, required category, required name, required stock}) {
    return GestureDetector(
      onTap: ()=>Get.to(Details()),
      child: Container(
        color: Color(0xFFDADADA).withOpacity(0.25),

        margin: EdgeInsets.only(bottom: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
                alignment: Alignment.center,
                children:[
                  Container(
                    width: 120,
                    height: 120,
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
                        fontSize: 11
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
                  SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                          stock.toString() + " Stock",
                        style: TextStyle(
                          color: CusColors.mainColor,
                          fontSize: 10,
                          fontWeight: FontWeight.w500
                        ),
                      ),
                      SizedBox(
                        width: 30,
                        height: 30,
                        child: ElevatedButton(
                          onPressed: (){
                            ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  padding: EdgeInsets.symmetric(vertical: 14, horizontal: 15),
                                  backgroundColor: CusColors.buttonBg,
                                  content: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Icon(
                                        CupertinoIcons.check_mark_circled,
                                        size: 16,
                                        color: Colors.white,
                                      ),
                                      SizedBox(width: 6,),
                                      Text("Items added to bag successfully",
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w400
                                        ),
                                      ),
                                    ],
                                  ),
                                  duration: Duration(seconds: 2),
                                )
                            );
                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(Color(0xFFe5e5e5)),
                            shadowColor: MaterialStatePropertyAll(Colors.transparent),
                            side: MaterialStatePropertyAll(BorderSide(width: 1, color: CusColors.buttonBg))
                          ),
                          child: Container(
                            transform: Matrix4.translationValues(-10, 0, 0),
                            child: Icon(
                              IconlyLight.bag_2,
                              size: 18,
                              color: CusColors.buttonBg,
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }

  Widget _recent(BuildContext context,
      {required image, required category, required name}) {
    return Container(
      margin: EdgeInsets.only(left: 10),
      // color: Color.fromRGBO(69, 69, 69, 100),
      child: Column(
        children: <Widget>[
          Stack(children: [
            Container(
              color: Color.fromRGBO(214, 214, 214, 100),
              padding: EdgeInsets.only(left: 5, top: 10),
              width: 120,
              height: 100,
              child: Image(
                image: AssetImage(image),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 90, top: 5),
              child: Icon(
                IconlyBold.heart,
                color: Colors.red,
                size: 20,
              ),
            )
          ]),
          Container(
            width: 120,
            height: 80,
            color: Color.fromRGBO(240, 236, 236, 0.612),
            child: Padding(
              padding: EdgeInsets.only(left: 5),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 70),
                    child: Text(
                      category,
                      style: TextStyle(
                        color: Color.fromRGBO(150, 142, 142, 100),
                        fontFamily: "Poppins",
                        fontSize: 10,
                      ),
                    ),
                  ),
                  Container(
                    // width: 100,
                    child: Text(
                      name,
                      style: TextStyle(
                          fontSize: 10,
                          color: Color.fromRGBO(69, 69, 69, 100),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top:20),
                          child: Text("3 Stock",style: 
                          TextStyle(
                            color: Color.fromRGBO(73, 105, 86, 100),
                            fontSize: 10
                          ),),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 20, right: 5),
                          child: Container(
                            // transform: Matrix4.translationValues(-1, 0, 0),
                            width: 30,
                            height: 25,
                            child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.transparent,
                                  shadowColor: Colors.transparent,
                                  side: BorderSide(
                                      color:
                                          Color.fromRGBO(107, 154, 126, 100)),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(6)),
                                ),
                                child: Icon(
                                  Icons.shopping_bag_outlined,
                                  color: Color.fromRGBO(107, 154, 126, 100),
                                  size: 15,
                                )),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          // Container(
          //     width: 100,
          //     child: Text(
          //       name,
          //       style: TextStyle(
          //           color: Color.fromRGBO(69, 69, 69, 100),
          //           fontWeight: FontWeight.bold),
          //     ))
        ],
      ),
    );
  }
}
