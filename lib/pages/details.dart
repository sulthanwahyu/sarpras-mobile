import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:sarpras/pages/cart.dart';
import 'package:sarpras/pages/components/smallCard.dart';
import 'package:sarpras/utils/constant.dart';
import 'package:get/get.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {

  int number1 = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(top: 30, left: 12, right: 12),
            child: Column(
              children: [
                Flexible(
                  flex: 0,
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                          padding: EdgeInsets.only(left: 55),
                          child: Text(
                            "Showing Details",
                            style: TextStyle(
                                color: Color(0xffAFA8A8),
                                fontFamily: 'Poppins',
                                fontSize: 14,
                                fontWeight: FontWeight.w500
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: (){},
                              child: Container(
                                margin: EdgeInsets.only(right: 4),
                                child: Stack(
                                    children:[
                                      Container(
                                        width: 38,
                                        height: 38,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: CusColors.grey100.withOpacity(0.1),
                                        ),
                                        child: Icon(
                                          CupertinoIcons.heart,
                                          color: CusColors.titleColor,
                                          size: 22,
                                        ),
                                      ),
                                    ]
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => Cart(),)
                                );
                              },
                              child: Container(
                                margin: EdgeInsets.only(right: 2),
                                child: Stack(
                                    children:[
                                      Container(
                                        width: 38,
                                        height: 38,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: CusColors.grey100.withOpacity(0.1),
                                        ),
                                        child: Icon(
                                          IconlyLight.bag,
                                          color: CusColors.titleColor,
                                          size: 22,
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
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),

                Flexible(
                  flex: 3,
                  child: ListView(
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 100),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 10),
                              width: double.infinity,
                              height: 300,
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Color(0xFFdcdcdc).withOpacity(0.35),
                                borderRadius: BorderRadius.circular(8)
                              ),
                              child: Image(
                                image: AssetImage("assets/ae.png"),
                              ),
                            ),

                            SizedBox(height: 10,),

                            Padding(
                              padding: const EdgeInsets.only(left: 18),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(
                                    IconlyLight.video,
                                    size: 18,
                                    color: CusColors.subTitleColor,
                                  ),
                                  SizedBox(width: 4,),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 1),
                                    child: Text(
                                      "Projector",
                                      style: TextStyle(
                                        color: CusColors.subTitleColor,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),

                            SizedBox(height: 3,),

                            Padding(
                              padding: const EdgeInsets.only(left: 12),
                              child: Text(
                                  "Acer Essentials Projector",
                                style: TextStyle(
                                  color: CusColors.titleColor,
                                  fontSize: 22,
                                  fontWeight: FontWeight.w500
                                ),
                              ),
                            ),

                            SizedBox(height: 40,),
                            
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Text(
                                "3 Available",
                                style: TextStyle(
                                  color: CusColors.mainColor,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12
                                ),
                              ),
                            ),

                            SizedBox(height: 20,),

                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text(
                                "About Product",
                                style: TextStyle(
                                  color: CusColors.mainColor,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18
                                ),
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(right: 70),
                              child: Container(
                                height: 1,
                                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                                color: CusColors.subTitleColor.withOpacity(.25),
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Wrap(
                                direction: Axis.horizontal,
                                spacing: 20,
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(right: 5),
                                    child: Wrap(
                                      direction: Axis.vertical,
                                      spacing: 10,
                                      children: [
                                        Text(
                                            "Condition",
                                          style: TextStyle(
                                            color: CusColors.subTitleColor
                                          ),
                                        ),
                                        Text(
                                            "Category",
                                          style: TextStyle(
                                            color: CusColors.subTitleColor
                                          ),
                                        ),
                                        Text(
                                            "Brand",
                                          style: TextStyle(
                                            color: CusColors.subTitleColor
                                          ),
                                        ),
                                        Text(
                                            "Color",
                                          style: TextStyle(
                                            color: CusColors.subTitleColor
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Wrap(
                                      direction: Axis.vertical,
                                      spacing: 10,
                                      children: [
                                        Text(
                                            "Good",
                                          style: TextStyle(
                                            color: CusColors.mainColor,
                                            fontWeight: FontWeight.w500
                                          ),
                                        ),
                                        Text(
                                            "Projector",
                                          style: TextStyle(
                                            color: CusColors.mainColor,
                                              fontWeight: FontWeight.w500,
                                              decoration: TextDecoration.underline
                                          ),
                                        ),
                                        Text(
                                            "Acer",
                                          style: TextStyle(
                                            color: CusColors.mainColor,
                                              fontWeight: FontWeight.w500
                                          ),
                                        ),
                                        Text(
                                            "Black",
                                          style: TextStyle(
                                            color: CusColors.mainColor,
                                              fontWeight: FontWeight.w500
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),

                            SizedBox(height: 10,),

                            Container(
                              width: double.infinity,
                              child: Column(
                                children: [
                                  Container(
                                    height: 1.5,
                                    margin: EdgeInsets.symmetric(vertical: 20),
                                    color: CusColors.subTitleColor.withOpacity(.25),
                                  ),

                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        padding: EdgeInsets.only(left: 2),
                                        child: Text(
                                          "More like this",
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            color: CusColors.titleColor
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 10,),
                                  SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Wrap(
                                      spacing: 20,
                                      children: [
                                        recent(
                                            context, 
                                            image: "assets/ae.png",
                                            category: "projector",
                                            name: "Acer Essentials Projector"
                                        ),recent(
                                            context,
                                            image: "assets/ae.png",
                                            category: "projector",
                                            name: "Acer Essentials Projector"
                                        ),recent(
                                            context,
                                            image: "assets/ae.png",
                                            category: "projector",
                                            name: "Acer Essentials Projector"
                                        ),
                                      ],
                                    )
                                  ),
                                  SizedBox(height: 30,)
                                ],
                              ),
                            ),

                            Container(
                              width: double.infinity,
                              child: Column(
                                children: [
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        padding: EdgeInsets.only(left: 2),
                                        child: Text(
                                          "You might also like",
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            color: CusColors.titleColor
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 10,),
                                  SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Wrap(
                                      spacing: 20,
                                      children: [
                                        recent(
                                            context,
                                            image: "assets/ae.png",
                                            category: "projector",
                                            name: "Acer Essentials Projector"
                                        ),recent(
                                            context,
                                            image: "assets/ae.png",
                                            category: "projector",
                                            name: "Acer Essentials Projector"
                                        ),recent(
                                            context,
                                            image: "assets/ae.png",
                                            category: "projector",
                                            name: "Acer Essentials Projector"
                                        ),
                                      ],
                                    )
                                  ),
                                  SizedBox(height: 30,)
                                ],
                              ),
                            ),

                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),

          Container(
            alignment: Alignment.bottomCenter,
            padding: EdgeInsets.only(top: 28, left: 12, right: 12),
            child: Container(
              height: 120,
              padding: EdgeInsets.only(bottom: 20),
              color: CusColors.appColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: 1,
                    color: Color(0xFFd8d6d6),
                  ),

                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const Text.rich(TextSpan(
                            text: 'Brand : ',
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(0xff968E8E),
                              fontWeight: FontWeight.w500,
                            ),
                            children: <InlineSpan>[
                              TextSpan(
                                text: ' Acer',
                                style: TextStyle(
                                  color: Color(0xff496956),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14
                                ),
                              )
                            ])),
                        const Text.rich(TextSpan(
                            text: 'Color : ',
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(0xff968E8E),
                              fontWeight: FontWeight.w500,
                            ),
                            children: <InlineSpan>[
                              TextSpan(
                                text: ' Black',
                                style: TextStyle(
                                    color: Color(0xff496956),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14
                                ),
                              )
                            ])),
                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Container(
                      height: 1,
                      color: Color(0xFFd8d6d6),
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          child: Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    if(number1 >= 1){
                                      number1--;
                                    }
                                  });
                                },
                                child: Container(
                                    width: 25,
                                    height: 25,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      color: Colors.transparent,
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(6),
                                      ),
                                      border: Border.all(
                                          color: CusColors.buttonBg,
                                          width: 2
                                      ),
                                    ),
                                    child: Icon(CupertinoIcons.minus, size: 16, color: CusColors.buttonBg)
                                ),
                              ),
                              Container(
                                width: 34,
                                height: 34,
                                alignment: Alignment.center,
                                child: Text(
                                  number1.toString(),
                                  style: TextStyle(
                                      color: Color(0xff968E8E),
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    if(number1 <= 2){
                                      number1++;
                                    }else{
                                      ScaffoldMessenger.of(context).showSnackBar(
                                          SnackBar(
                                              padding: EdgeInsets.symmetric(vertical: 14, horizontal: 15),
                                              backgroundColor: CusColors.pinkMain,
                                              content: Row(
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                  Icon(
                                                    CupertinoIcons.clear_circled,
                                                    size: 16,
                                                    color: Colors.white,
                                                  ),
                                                  SizedBox(width: 6,),
                                                  Text("Cannot add more items",
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.w500
                                                  ),
                                                  ),
                                                ],
                                              ),
                                              duration: Duration(seconds: 2),
                                          )
                                      );
                                    }
                                  });
                                },
                                child: Icon(
                                    IconlyBold.plus,
                                    size: 30,
                                    color: CusColors.buttonBg
                                ),
                              )
                            ],
                          ),
                        ),

                        Row(
                          children: [
                            Container(
                              height: 40,
                              transform: Matrix4.translationValues(2, 0, 0),
                              padding: EdgeInsets.only(left: 6, right: 6.5),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: CusColors.buttonBg,
                                  width: 2
                                ),
                                color: Color(0xFFeaeaea),
                                borderRadius: BorderRadiusDirectional.only(
                                  topStart: Radius.circular(7),
                                  bottomStart: Radius.circular(7)
                                )
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    IconlyLight.bag,
                                    color: CusColors.buttonBg,
                                    size: 22,
                                  ),
                                  SizedBox(width: 3,),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 1, right: 1),
                                    child: Text(
                                        number1.toString(),
                                      style: TextStyle(
                                        color: CusColors.buttonBg,
                                        fontSize: 17,
                                        fontWeight: FontWeight.w500
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 170,
                              height: 40,
                              child: ElevatedButton(
                                onPressed: (){
                                  if(number1 <= 1){
                                    ScaffoldMessenger.of(context).showSnackBar(
                                        SnackBar(
                                          padding: EdgeInsets.symmetric(vertical: 14, horizontal: 15),
                                          backgroundColor: CusColors.pinkMain,
                                          content: Row(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Icon(
                                                CupertinoIcons.clear_circled,
                                                size: 16,
                                                color: Colors.white,
                                              ),
                                              SizedBox(width: 6,),
                                              Text("Please enter the number of items",
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
                                  }else{
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
                                  }
                                },
                                style: ButtonStyle(
                                  shape: MaterialStatePropertyAll(
                                    RoundedRectangleBorder(borderRadius: BorderRadius.only(topRight: Radius.circular(7), bottomRight: Radius.circular(7)))
                                  ),
                                  backgroundColor: MaterialStatePropertyAll(CusColors.buttonBg),
                                  shadowColor: MaterialStatePropertyAll(Colors.transparent)
                                ),
                                child: Text(
                                  "Add to bag"
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
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
            padding: EdgeInsets.symmetric(horizontal: 1, vertical: 1),
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
              ],
            ),
          ),

        ],
      ),
    );
  }
}
