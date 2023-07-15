import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:get/get.dart';
import 'package:sarpras/pages/receipt.dart';
import 'package:sarpras/utils/constant.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  int number1 = 1;
  int number2 = 1;
  int number3 = 1;
  int number4 = 1;
  int number5 = 1;
  int returnLimit = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              Flexible(
                  flex: 0,
                  child: Container(
                    padding: const EdgeInsets.only(top: 38, left: 18, right: 18, bottom: 10),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: ()=>Get.back(),
                          child: const Icon(
                            Icons.arrow_back_ios,
                            color: Color(0xff454545),
                            size: 16,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 5),
                          child: const Text(
                            'Your Carts',
                            style: TextStyle(
                                fontSize: 16,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF454545),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),
              Flexible(
                flex: 3,
                child: ListView(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(left: 22, right: 22),
                      margin: EdgeInsets.only(bottom:180),
                      child: Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(bottom: 30),
                            child: Wrap(
                              direction: Axis.vertical,
                              spacing: 20,
                              children: [
                                SizedBox(
                                  height: 90,
                                  width: 375,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(7),
                                        color: Color(0xFFDDD6D6).withOpacity(0.25)
                                    ),
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 90,
                                          width: 80,
                                          padding: EdgeInsets.all(8),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(7),
                                              gradient: const LinearGradient(
                                                  begin: Alignment.topLeft,
                                                  end: Alignment.bottomRight,
                                                  colors: <Color>[
                                                    Color(0xffD9D9D9),
                                                    Color(0xffDDD6D6),
                                                  ])),
                                          child: Image.asset('assets/ae.png'),
                                        ),
                                        Container(
                                          width: 280,
                                          padding: EdgeInsets.symmetric(horizontal:10, vertical:8),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 2,
                                                      vertical: 1
                                                  ),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.spaceBetween,
                                                    children: [
                                                      Text(
                                                        'Projector',
                                                        style: TextStyle(
                                                            color: CusColors.subTitleColor,
                                                            fontFamily: 'Poppins',
                                                            fontSize: 8,
                                                            fontWeight: FontWeight.w500,
                                                        ),
                                                      ),
                                                    ],
                                                  )),
                                              Container(
                                                margin: EdgeInsets.only(bottom: 16),
                                                child: Text.rich(TextSpan(
                                                  text: 'Acer Essentials Projector ',
                                                  style: TextStyle(
                                                    fontFamily: 'Poppins',
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.w500,
                                                    color: CusColors.titleColor,
                                                  ),
                                                )),
                                              ),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    child: Text(
                                                      'Loan term',
                                                      style: TextStyle(
                                                          color: CusColors.mainColor,
                                                          fontSize: 9,
                                                        fontWeight: FontWeight.w500,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.only(right: 8),
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
                                                            width: 19,
                                                            height: 19,
                                                            alignment: Alignment.center,
                                                            decoration: BoxDecoration(
                                                              color: Colors.transparent,
                                                              borderRadius: BorderRadius.all(
                                                                Radius.circular(6),
                                                              ),
                                                              border: Border.all(
                                                                  color: CusColors.buttonBg,
                                                                  width: 1.3
                                                              ),
                                                            ),
                                                            child: Icon(CupertinoIcons.minus, size: 12, color: CusColors.buttonBg)
                                                          ),
                                                        ),
                                                        Container(
                                                          width: 19,
                                                          height: 19,
                                                          alignment: Alignment.center,
                                                          child: Text(
                                                            number1.toString(),
                                                            style: TextStyle(
                                                                color: Color(0xff968E8E),
                                                                fontSize: 11,
                                                              fontWeight: FontWeight.w500
                                                            ),
                                                          ),
                                                        ),
                                                        GestureDetector(
                                                          onTap: () {
                                                            setState(() {
                                                              if(number1 <= 4){
                                                                number1++;
                                                              }
                                                            });
                                                          },
                                                          child: Icon(
                                                              IconlyBold.plus,
                                                              size: 24,
                                                              color: CusColors.buttonBg
                                                          ),
                                                        )
                                                      ],
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
                                ),
                                SizedBox(
                                  height: 90,
                                  width: 375,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(7),
                                        color: Color(0xFFDDD6D6).withOpacity(0.25)
                                    ),
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 90,
                                          width: 80,
                                          padding: EdgeInsets.all(8),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(7),
                                              gradient: const LinearGradient(
                                                  begin: Alignment.topLeft,
                                                  end: Alignment.bottomRight,
                                                  colors: <Color>[
                                                    Color(0xffD9D9D9),
                                                    Color(0xffDDD6D6),
                                                  ])),
                                          child: Image.asset('assets/ae.png'),
                                        ),
                                        Container(
                                          width: 280,
                                          padding: EdgeInsets.symmetric(horizontal:10, vertical:8),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 2,
                                                      vertical: 1
                                                  ),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.spaceBetween,
                                                    children: [
                                                      Text(
                                                        'Projector',
                                                        style: TextStyle(
                                                            color: CusColors.subTitleColor,
                                                            fontFamily: 'Poppins',
                                                            fontSize: 8,
                                                            fontWeight: FontWeight.w500,
                                                        ),
                                                      ),
                                                    ],
                                                  )),
                                              Container(
                                                margin: EdgeInsets.only(bottom: 16),
                                                child: Text.rich(TextSpan(
                                                  text: 'Acer Essentials Projector ',
                                                  style: TextStyle(
                                                    fontFamily: 'Poppins',
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.w500,
                                                    color: CusColors.titleColor,
                                                  ),
                                                )),
                                              ),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    child: Text(
                                                      'Loan term',
                                                      style: TextStyle(
                                                          color: CusColors.mainColor,
                                                          fontSize: 9,
                                                        fontWeight: FontWeight.w500,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.only(right: 8),
                                                    child: Row(
                                                      children: [
                                                        GestureDetector(
                                                          onTap: () {
                                                            setState(() {
                                                              if(number2 >= 1){
                                                                number2--;
                                                              }
                                                            });
                                                          },
                                                          child: Container(
                                                            width: 19,
                                                            height: 19,
                                                            alignment: Alignment.center,
                                                            decoration: BoxDecoration(
                                                              color: Colors.transparent,
                                                              borderRadius: BorderRadius.all(
                                                                Radius.circular(6),
                                                              ),
                                                              border: Border.all(
                                                                  color: CusColors.buttonBg,
                                                                  width: 1.3
                                                              ),
                                                            ),
                                                            child: Icon(CupertinoIcons.minus, size: 12, color: CusColors.buttonBg)
                                                          ),
                                                        ),
                                                        Container(
                                                          width: 19,
                                                          height: 19,
                                                          alignment: Alignment.center,
                                                          child: Text(
                                                            number2.toString(),
                                                            style: TextStyle(
                                                                color: Color(0xff968E8E),
                                                                fontSize: 11,
                                                              fontWeight: FontWeight.w500
                                                            ),
                                                          ),
                                                        ),
                                                        GestureDetector(
                                                          onTap: () {
                                                            setState(() {
                                                              if(number2 <= 4){
                                                                number2++;
                                                              }
                                                            });
                                                          },
                                                          child: Icon(
                                                              IconlyBold.plus,
                                                              size: 24,
                                                              color: CusColors.buttonBg
                                                          ),
                                                        )
                                                      ],
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
                                ),
                                SizedBox(
                                  height: 90,
                                  width: 375,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(7),
                                        color: Color(0xFFDDD6D6).withOpacity(0.25)
                                    ),
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 90,
                                          width: 80,
                                          padding: EdgeInsets.all(8),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                              BorderRadius.circular(7),
                                              gradient: const LinearGradient(
                                                  begin: Alignment.topLeft,
                                                  end: Alignment.bottomRight,
                                                  colors: <Color>[
                                                    Color(0xffD9D9D9),
                                                    Color(0xffDDD6D6),
                                                  ])),
                                          child: Image.asset('assets/ae.png'),
                                        ),
                                        Container(
                                          width: 280,
                                          padding: EdgeInsets.symmetric(horizontal:10, vertical:8),
                                          child: Column(
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 2,
                                                      vertical: 1
                                                  ),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                    MainAxisAlignment.spaceBetween,
                                                    children: [
                                                      Text(
                                                        'Projector',
                                                        style: TextStyle(
                                                          color: CusColors.subTitleColor,
                                                          fontFamily: 'Poppins',
                                                          fontSize: 8,
                                                          fontWeight: FontWeight.w500,
                                                        ),
                                                      ),
                                                    ],
                                                  )),
                                              Container(
                                                margin: EdgeInsets.only(bottom: 16),
                                                child: Text.rich(TextSpan(
                                                  text: 'Acer Essentials Projector ',
                                                  style: TextStyle(
                                                    fontFamily: 'Poppins',
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.w500,
                                                    color: CusColors.titleColor,
                                                  ),
                                                )),
                                              ),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    child: Text(
                                                      'Loan term',
                                                      style: TextStyle(
                                                        color: CusColors.mainColor,
                                                        fontSize: 9,
                                                        fontWeight: FontWeight.w500,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.only(right: 8),
                                                    child: Row(
                                                      children: [
                                                        GestureDetector(
                                                          onTap: () {
                                                            setState(() {
                                                              if(number3 >= 1){
                                                                number3--;
                                                              }
                                                            });
                                                          },
                                                          child: Container(
                                                              width: 19,
                                                              height: 19,
                                                              alignment: Alignment.center,
                                                              decoration: BoxDecoration(
                                                                color: Colors.transparent,
                                                                borderRadius: BorderRadius.all(
                                                                  Radius.circular(6),
                                                                ),
                                                                border: Border.all(
                                                                    color: CusColors.buttonBg,
                                                                    width: 1.3
                                                                ),
                                                              ),
                                                              child: Icon(CupertinoIcons.minus, size: 12, color: CusColors.buttonBg)
                                                          ),
                                                        ),
                                                        Container(
                                                          width: 19,
                                                          height: 19,
                                                          alignment: Alignment.center,
                                                          child: Text(
                                                            number3.toString(),
                                                            style: TextStyle(
                                                                color: Color(0xff968E8E),
                                                                fontSize: 11,
                                                                fontWeight: FontWeight.w500
                                                            ),
                                                          ),
                                                        ),
                                                        GestureDetector(
                                                          onTap: () {
                                                            setState(() {
                                                              if(number3 <= 4){
                                                                number3++;
                                                              }
                                                            });
                                                          },
                                                          child: Icon(
                                                              IconlyBold.plus,
                                                              size: 24,
                                                              color: CusColors.buttonBg
                                                          ),
                                                        )
                                                      ],
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
                                ),
                                SizedBox(
                                  height: 90,
                                  width: 375,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(7),
                                        color: Color(0xFFDDD6D6).withOpacity(0.25)
                                    ),
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 90,
                                          width: 80,
                                          padding: EdgeInsets.all(8),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                              BorderRadius.circular(7),
                                              gradient: const LinearGradient(
                                                  begin: Alignment.topLeft,
                                                  end: Alignment.bottomRight,
                                                  colors: <Color>[
                                                    Color(0xffD9D9D9),
                                                    Color(0xffDDD6D6),
                                                  ])),
                                          child: Image.asset('assets/ae.png'),
                                        ),
                                        Container(
                                          width: 280,
                                          padding: EdgeInsets.symmetric(horizontal:10, vertical:8),
                                          child: Column(
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 2,
                                                      vertical: 1
                                                  ),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                    MainAxisAlignment.spaceBetween,
                                                    children: [
                                                      Text(
                                                        'Projector',
                                                        style: TextStyle(
                                                          color: CusColors.subTitleColor,
                                                          fontFamily: 'Poppins',
                                                          fontSize: 8,
                                                          fontWeight: FontWeight.w500,
                                                        ),
                                                      ),
                                                    ],
                                                  )),
                                              Container(
                                                margin: EdgeInsets.only(bottom: 16),
                                                child: Text.rich(TextSpan(
                                                  text: 'Acer Essentials Projector ',
                                                  style: TextStyle(
                                                    fontFamily: 'Poppins',
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.w500,
                                                    color: CusColors.titleColor,
                                                  ),
                                                )),
                                              ),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    child: Text(
                                                      'Loan term',
                                                      style: TextStyle(
                                                        color: CusColors.mainColor,
                                                        fontSize: 9,
                                                        fontWeight: FontWeight.w500,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.only(right: 8),
                                                    child: Row(
                                                      children: [
                                                        GestureDetector(
                                                          onTap: () {
                                                            setState(() {
                                                              if(number4 >= 1){
                                                                number4--;
                                                              }
                                                            });
                                                          },
                                                          child: Container(
                                                              width: 19,
                                                              height: 19,
                                                              alignment: Alignment.center,
                                                              decoration: BoxDecoration(
                                                                color: Colors.transparent,
                                                                borderRadius: BorderRadius.all(
                                                                  Radius.circular(6),
                                                                ),
                                                                border: Border.all(
                                                                    color: CusColors.buttonBg,
                                                                    width: 1.3
                                                                ),
                                                              ),
                                                              child: Icon(CupertinoIcons.minus, size: 12, color: CusColors.buttonBg)
                                                          ),
                                                        ),
                                                        Container(
                                                          width: 19,
                                                          height: 19,
                                                          alignment: Alignment.center,
                                                          child: Text(
                                                            number4.toString(),
                                                            style: TextStyle(
                                                                color: Color(0xff968E8E),
                                                                fontSize: 11,
                                                                fontWeight: FontWeight.w500
                                                            ),
                                                          ),
                                                        ),
                                                        GestureDetector(
                                                          onTap: () {
                                                            setState(() {
                                                              if(number4 <= 4){
                                                                number4++;
                                                              }
                                                            });
                                                          },
                                                          child: Icon(
                                                              IconlyBold.plus,
                                                              size: 24,
                                                              color: CusColors.buttonBg
                                                          ),
                                                        )
                                                      ],
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
                                ),
                                SizedBox(
                                  height: 90,
                                  width: 375,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(7),
                                        color: Color(0xFFDDD6D6).withOpacity(0.25)
                                    ),
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 90,
                                          width: 80,
                                          padding: EdgeInsets.all(8),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                              BorderRadius.circular(7),
                                              gradient: const LinearGradient(
                                                  begin: Alignment.topLeft,
                                                  end: Alignment.bottomRight,
                                                  colors: <Color>[
                                                    Color(0xffD9D9D9),
                                                    Color(0xffDDD6D6),
                                                  ])),
                                          child: Image.asset('assets/ae.png'),
                                        ),
                                        Container(
                                          width: 280,
                                          padding: EdgeInsets.symmetric(horizontal:10, vertical:8),
                                          child: Column(
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 2,
                                                      vertical: 1
                                                  ),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                    MainAxisAlignment.spaceBetween,
                                                    children: [
                                                      Text(
                                                        'Projector',
                                                        style: TextStyle(
                                                          color: CusColors.subTitleColor,
                                                          fontFamily: 'Poppins',
                                                          fontSize: 8,
                                                          fontWeight: FontWeight.w500,
                                                        ),
                                                      ),
                                                    ],
                                                  )),
                                              Container(
                                                margin: EdgeInsets.only(bottom: 16),
                                                child: Text.rich(TextSpan(
                                                  text: 'Acer Essentials Projector ',
                                                  style: TextStyle(
                                                    fontFamily: 'Poppins',
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.w500,
                                                    color: CusColors.titleColor,
                                                  ),
                                                )),
                                              ),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    child: Text(
                                                      'Loan term',
                                                      style: TextStyle(
                                                        color: CusColors.mainColor,
                                                        fontSize: 9,
                                                        fontWeight: FontWeight.w500,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.only(right: 8),
                                                    child: Row(
                                                      children: [
                                                        GestureDetector(
                                                          onTap: () {
                                                            setState(() {
                                                              if(number5 >= 1){
                                                                number5--;
                                                              }
                                                            });
                                                          },
                                                          child: Container(
                                                              width: 19,
                                                              height: 19,
                                                              alignment: Alignment.center,
                                                              decoration: BoxDecoration(
                                                                color: Colors.transparent,
                                                                borderRadius: BorderRadius.all(
                                                                  Radius.circular(6),
                                                                ),
                                                                border: Border.all(
                                                                    color: CusColors.buttonBg,
                                                                    width: 1.3
                                                                ),
                                                              ),
                                                              child: Icon(CupertinoIcons.minus, size: 12, color: CusColors.buttonBg)
                                                          ),
                                                        ),
                                                        Container(
                                                          width: 19,
                                                          height: 19,
                                                          alignment: Alignment.center,
                                                          child: Text(
                                                            number5.toString(),
                                                            style: TextStyle(
                                                                color: Color(0xff968E8E),
                                                                fontSize: 11,
                                                                fontWeight: FontWeight.w500
                                                            ),
                                                          ),
                                                        ),
                                                        GestureDetector(
                                                          onTap: () {
                                                            setState(() {
                                                              if(number5 <= 4){
                                                                number5++;
                                                              }
                                                            });
                                                          },
                                                          child: Icon(
                                                              IconlyBold.plus,
                                                              size: 24,
                                                              color: CusColors.buttonBg
                                                          ),
                                                        )
                                                      ],
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
                                ),
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
          Container(
            width: double.infinity,
            height: double.infinity,
            alignment: Alignment.bottomCenter,
            padding: EdgeInsets.symmetric(horizontal: 22),
            child: Container(
              height:195,
              color: CusColors.appColor,
              padding: EdgeInsets.fromLTRB(2, 0, 2, 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children:[
                  Container(
                    child: Row(
                      children: <Widget>[
                        Text('* Max 5 Product',
                            style: TextStyle(
                                color: Color(0xffAFA8A8),
                                fontFamily: 'Poppins',
                                fontSize: 9))
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 27, bottom: 8),
                    child: Row(
                      mainAxisAlignment:
                      MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Total Return Limit',
                            style: TextStyle(
                                color: Color(0xff496956),
                                fontFamily: 'Poppins',
                                fontSize: 12,
                                fontWeight: FontWeight.w500)),
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  if(returnLimit >= 1){
                                    returnLimit--;
                                  }
                                });
                              },
                              child: Container(
                                  width: 19,
                                  height: 19,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(6),
                                    ),
                                    border: Border.all(
                                        color: CusColors.buttonBg,
                                        width: 1.3
                                    ),
                                  ),
                                  child: Icon(CupertinoIcons.minus, size: 12, color: CusColors.buttonBg)
                              ),
                            ),
                            Container(
                              width: 20,
                              height: 20,
                              alignment: Alignment.center,
                              child: Text(
                                returnLimit.toString(),
                                style: TextStyle(
                                    color: CusColors.mainColor,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  if(returnLimit <= 9){
                                    returnLimit++;
                                  }
                                });
                              },
                              child: Icon(
                                  IconlyBold.plus,
                                  size: 24,
                                  color: CusColors.buttonBg
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 4),
                              child: Text(
                                "Days",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: CusColors.mainColor,
                                ),
                              ),
                            )
                          ]
                        )
                      ],
                    ),
                  ),
                  Container(
                    height:2,
                    color: Color(0xFFD8D6D6),
                  ),
                  Container(
                    width: 380,
                    height: 50,
                    margin: EdgeInsets.only(top: 28),
                    child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(Color(0xff6B9A7E)),
                            shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.circular(10))
                            )
                        ),
                        onPressed: ()=>Get.to(Receipt()),
                        child: Text(
                          'Continue',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Poppins'),
                        )),
                  )
                ]
              ),
            ),
          )
        ],
      ),
    );
  }
}
