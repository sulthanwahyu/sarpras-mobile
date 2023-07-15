import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:sarpras/utils/constant.dart';

class NotificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xffE9E9E9),
        child: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                Flexible(
                    flex: 0,
                    child: Container(
                        padding: EdgeInsets.only(bottom: 4, top: 38, left: 18, right: 18),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  GestureDetector(
                                    onTap: (){
                                      Navigator.of(context).pop();
                                    },
                                    child: Icon(
                                      Icons.arrow_back_ios,
                                      color: Color(0xff454545),
                                      size: 16,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 10),
                                    child: Text(
                                      'Notification',
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
                            Container(
                              margin: EdgeInsets.only(left: 15),
                              child: Text(
                                'Mark all as read',
                                style: TextStyle(
                                    fontSize: 11,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff6B9A7E)),
                              ),
                            ),
                          ],
                        )
                    )
                ),
                Flexible(
                  flex: 4,
                  child: ListView(
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 16),
                        child: Column(
                          children: [
                            Column(
                              children: [
                                Container(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      Container(
                                        alignment: Alignment.centerLeft,
                                        margin: EdgeInsets.only(bottom: 15, left: 7),
                                        child: Row(
                                          children: [
                                            Container(
                                              margin: EdgeInsets.only(right: 6),
                                              height: 2,
                                              width: 12,
                                              decoration: BoxDecoration(
                                                color: CusColors.grey200,
                                                borderRadius: BorderRadius.circular(.5)
                                              ),
                                            ),
                                            Text(
                                                "Today",
                                              style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w500,
                                                color: CusColors.grey200
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
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
                                                    gradient: LinearGradient(
                                                        begin: Alignment.topLeft,
                                                        end: Alignment.bottomRight,
                                                        colors: <Color>[
                                                          Color(0xffD9D9D9),
                                                          Color(0xffDDD6D6),
                                                        ])),
                                                child: Image.asset(
                                                    'assets/ae.png'),
                                              ),
                                              Container(
                                                width: 292,
                                                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                        padding: EdgeInsets.symmetric(
                                                                 horizontal: 2,
                                                                vertical: 2
                                                        ),
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment.spaceBetween,
                                                          children: [
                                                            Text(
                                                              'Product restocked',
                                                              style: TextStyle(
                                                                  color: CusColors.grey300,
                                                                  fontSize: 8,
                                                                  fontWeight: FontWeight.w500
                                                              ),
                                                            ),
                                                            Icon(
                                                              Icons.circle,
                                                              color:
                                                                  Color(0xffE45986),
                                                              size: 9,
                                                            )
                                                          ],
                                                        )),
                                                    Container(
                                                      margin: EdgeInsets.only(bottom: 8),
                                                      child: Text.rich(
                                                          TextSpan(
                                                          text: 'Acer Essentials Projector ',
                                                          recognizer: TapGestureRecognizer()..onTap = (){},
                                                          style: TextStyle(
                                                            fontSize: 12,
                                                            color: Color(0xff496956),
                                                            fontWeight: FontWeight.w500,
                                                            decoration: TextDecoration.underline,
                                                          ),
                                                          children: <InlineSpan>[
                                                            TextSpan(
                                                              text:' on your wishlist has been restocked',
                                                              style: TextStyle(
                                                                color: Color(0xff454545),
                                                                decoration: TextDecoration.none,
                                                              ),
                                                            )
                                                          ])
                                                      ),
                                                    ),
                                                    Container(
                                                      child: Text(
                                                        '10 mins ago',
                                                        style: TextStyle(
                                                            color: Color(0xff968E8E),
                                                            fontSize: 8,
                                                              fontWeight: FontWeight.w500
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin:
                                            EdgeInsets.only(top: 5, bottom: 5),
                                        child: new Divider(
                                          color: CusColors.subTitleColor.withOpacity(0.2),
                                        ),
                                      ),
                                      Container(
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
                                                    gradient: LinearGradient(
                                                        begin: Alignment.topLeft,
                                                        end: Alignment.bottomRight,
                                                        colors: <Color>[
                                                          Color(0xffD9D9D9),
                                                          Color(0xffDDD6D6),
                                                        ])),
                                                child: Image.asset(
                                                    'assets/ae.png'),
                                              ),
                                              Container(
                                                width: 292,
                                                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                                                child: Column(
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                        padding: EdgeInsets.symmetric(
                                                            horizontal: 2,
                                                            vertical: 2
                                                        ),
                                                        child: Row(
                                                          mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                          children: [
                                                            Text(
                                                              'Product restocked',
                                                              style: TextStyle(
                                                                  color: CusColors.grey300,
                                                                  fontSize: 8,
                                                                  fontWeight: FontWeight.w500
                                                              ),
                                                            ),
                                                            Icon(
                                                              Icons.circle,
                                                              color:
                                                              Color(0xffE45986),
                                                              size: 9,
                                                            )
                                                          ],
                                                        )),
                                                    Container(
                                                      margin: EdgeInsets.only(bottom: 8),
                                                      child: Text.rich(
                                                          TextSpan(
                                                              text: 'Acer Essentials Projector ',
                                                              recognizer: TapGestureRecognizer()..onTap = (){},
                                                              style: TextStyle(
                                                                fontSize: 12,
                                                                color: Color(0xff496956),
                                                                fontWeight: FontWeight.w500,
                                                                decoration: TextDecoration.underline,
                                                              ),
                                                              children: <InlineSpan>[
                                                                TextSpan(
                                                                  text:' on your wishlist has been restocked',
                                                                  style: TextStyle(
                                                                    color: Color(0xff454545),
                                                                    decoration: TextDecoration.none,
                                                                  ),
                                                                )
                                                              ])
                                                      ),
                                                    ),
                                                    Container(
                                                      child: Text(
                                                        '10 mins ago',
                                                        style: TextStyle(
                                                            color: Color(0xff968E8E),
                                                            fontSize: 8,
                                                            fontWeight: FontWeight.w500
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin:
                                        EdgeInsets.only(top: 5, bottom: 5),
                                        child: new Divider(
                                          color: CusColors.subTitleColor.withOpacity(0.2),
                                        ),
                                      ),
                                      Container(
                                        height: 90,
                                        width: 375,
                                        child: Container(
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(7),
                                              color: Color(0xFFDDD6D6).withOpacity(0.15)
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
                                                    gradient: LinearGradient(
                                                        begin: Alignment.topLeft,
                                                        end: Alignment.bottomRight,
                                                        colors: <Color>[
                                                          Color(0xffD9D9D9),
                                                          Color(0xffDDD6D6),
                                                        ])),
                                                child: Image.asset(
                                                    'assets/ae.png'),
                                              ),
                                              Container(
                                                width: 292,
                                                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                                                child: Column(
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                        padding: EdgeInsets.symmetric(
                                                            horizontal: 2,
                                                            vertical: 2
                                                        ),
                                                        child: Row(
                                                          mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                          children: [
                                                            Text(
                                                              'Product restocked',
                                                              style: TextStyle(
                                                                  color: CusColors.grey300,
                                                                  fontSize: 8,
                                                                  fontWeight: FontWeight.w500
                                                              ),
                                                            ),
                                                          ],
                                                        )),
                                                    Container(
                                                      margin: EdgeInsets.only(bottom: 8),
                                                      child: Text.rich(
                                                          TextSpan(
                                                              text: 'Acer Essentials Projector ',
                                                              recognizer: TapGestureRecognizer()..onTap = (){},
                                                              style: TextStyle(
                                                                fontSize: 12,
                                                                color: Color(0xff496956),
                                                                fontWeight: FontWeight.w500,
                                                                decoration: TextDecoration.underline,
                                                              ),
                                                              children: <InlineSpan>[
                                                                TextSpan(
                                                                  text:' on your wishlist has been restocked',
                                                                  style: TextStyle(
                                                                    color: Color(0xff454545),
                                                                    decoration: TextDecoration.none,
                                                                  ),
                                                                )
                                                              ])
                                                      ),
                                                    ),
                                                    Container(
                                                      child: Text(
                                                        '10 mins ago',
                                                        style: TextStyle(
                                                            color: Color(0xff968E8E),
                                                            fontSize: 8,
                                                            fontWeight: FontWeight.w500
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin:
                                        EdgeInsets.only(top: 5, bottom: 5),
                                        child: new Divider(
                                          color: CusColors.subTitleColor.withOpacity(0.2),
                                        ),
                                      ),
                                      Container(
                                        height: 90,
                                        width: 375,
                                        child: Container(
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(7),
                                              color: Color(0xFFDDD6D6).withOpacity(0.15)
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
                                                    gradient: LinearGradient(
                                                        begin: Alignment.topLeft,
                                                        end: Alignment.bottomRight,
                                                        colors: <Color>[
                                                          Color(0xffD9D9D9),
                                                          Color(0xffDDD6D6),
                                                        ])),
                                                child: Image.asset(
                                                    'assets/ae.png'),
                                              ),
                                              Container(
                                                width: 292,
                                                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                                                child: Column(
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                        padding: EdgeInsets.symmetric(
                                                            horizontal: 2,
                                                            vertical: 2
                                                        ),
                                                        child: Row(
                                                          mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                          children: [
                                                            Text(
                                                              'Product restocked',
                                                              style: TextStyle(
                                                                  color: CusColors.grey300,
                                                                  fontSize: 8,
                                                                  fontWeight: FontWeight.w500
                                                              ),
                                                            ),
                                                          ],
                                                        )),
                                                    Container(
                                                      margin: EdgeInsets.only(bottom: 8),
                                                      child: Text.rich(
                                                          TextSpan(
                                                              text: 'Acer Essentials Projector ',
                                                              recognizer: TapGestureRecognizer()..onTap = (){},
                                                              style: TextStyle(
                                                                fontSize: 12,
                                                                color: Color(0xff496956),
                                                                fontWeight: FontWeight.w500,
                                                                decoration: TextDecoration.underline,
                                                              ),
                                                              children: <InlineSpan>[
                                                                TextSpan(
                                                                  text:' on your wishlist has been restocked',
                                                                  style: TextStyle(
                                                                    color: Color(0xff454545),
                                                                    decoration: TextDecoration.none,
                                                                  ),
                                                                )
                                                              ])
                                                      ),
                                                    ),
                                                    Container(
                                                      child: Text(
                                                        '10 mins ago',
                                                        style: TextStyle(
                                                            color: Color(0xff968E8E),
                                                            fontSize: 8,
                                                            fontWeight: FontWeight.w500
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin:
                                        EdgeInsets.only(top: 5, bottom: 5),
                                        child: new Divider(
                                          color: CusColors.subTitleColor.withOpacity(0.2),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      Container(
                                        alignment: Alignment.centerLeft,
                                        margin: EdgeInsets.only(bottom: 15, left: 5),
                                        child: Row(
                                          children: [
                                            Container(
                                              margin: EdgeInsets.only(right: 6),
                                              height: 2,
                                              width: 12,
                                              decoration: BoxDecoration(
                                                color: CusColors.grey200,
                                                borderRadius: BorderRadius.circular(.5)
                                              ),
                                            ),
                                            Text(
                                                "Yesterday",
                                              style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w500,
                                                color: CusColors.grey200
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
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
                                                    gradient: LinearGradient(
                                                        begin: Alignment.topLeft,
                                                        end: Alignment.bottomRight,
                                                        colors: <Color>[
                                                          Color(0xffD9D9D9),
                                                          Color(0xffDDD6D6),
                                                        ])),
                                                child: Image.asset(
                                                    'assets/ae.png'),
                                              ),
                                              Container(
                                                width: 292,
                                                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                        padding: EdgeInsets.symmetric(
                                                                 horizontal: 2,
                                                                vertical: 2
                                                        ),
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Text(
                                                              'Product restocked',
                                                              style: TextStyle(
                                                                  color: CusColors.grey300,
                                                                  fontSize: 8,
                                                                  fontWeight: FontWeight.w500
                                                              ),
                                                            ),
                                                            Icon(
                                                              Icons.circle,
                                                              color:
                                                                  Color(0xffE45986),
                                                              size: 9,
                                                            )
                                                          ],
                                                        )),
                                                    Container(
                                                      margin: EdgeInsets.only(bottom: 8),
                                                      child: Text.rich(
                                                          TextSpan(
                                                          text: 'Acer Essentials Projector ',
                                                          recognizer: TapGestureRecognizer()..onTap = (){},
                                                          style: TextStyle(
                                                            fontSize: 12,
                                                            color: Color(0xff496956),
                                                            fontWeight: FontWeight.w500,
                                                            decoration: TextDecoration.underline,
                                                          ),
                                                          children: <InlineSpan>[
                                                            TextSpan(
                                                              text:' on your wishlist has been restocked',
                                                              style: TextStyle(
                                                                color: Color(0xff454545),
                                                                decoration: TextDecoration.none,
                                                              ),
                                                            )
                                                          ])
                                                      ),
                                                    ),
                                                    Container(
                                                      child: Text(
                                                        '10 mins ago',
                                                        style: TextStyle(
                                                            color: Color(0xff968E8E),
                                                            fontSize: 8,
                                                              fontWeight: FontWeight.w500
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin:
                                            EdgeInsets.only(top: 5, bottom: 5),
                                        child: new Divider(
                                          color: CusColors.subTitleColor.withOpacity(0.2),
                                        ),
                                      ),
                                      Container(
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
                                                    gradient: LinearGradient(
                                                        begin: Alignment.topLeft,
                                                        end: Alignment.bottomRight,
                                                        colors: <Color>[
                                                          Color(0xffD9D9D9),
                                                          Color(0xffDDD6D6),
                                                        ])),
                                                child: Image.asset(
                                                    'assets/ae.png'),
                                              ),
                                              Container(
                                                width: 292,
                                                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                                                child: Column(
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                        padding: EdgeInsets.symmetric(
                                                            horizontal: 2,
                                                            vertical: 2
                                                        ),
                                                        child: Row(
                                                          mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                          children: [
                                                            Text(
                                                              'Product restocked',
                                                              style: TextStyle(
                                                                  color: CusColors.grey300,
                                                                  fontSize: 8,
                                                                  fontWeight: FontWeight.w500
                                                              ),
                                                            ),
                                                            Icon(
                                                              Icons.circle,
                                                              color:
                                                              Color(0xffE45986),
                                                              size: 9,
                                                            )
                                                          ],
                                                        )),
                                                    Container(
                                                      margin: EdgeInsets.only(bottom: 8),
                                                      child: Text.rich(
                                                          TextSpan(
                                                              text: 'Acer Essentials Projector ',
                                                              recognizer: TapGestureRecognizer()..onTap = (){},
                                                              style: TextStyle(
                                                                fontSize: 12,
                                                                color: Color(0xff496956),
                                                                fontWeight: FontWeight.w500,
                                                                decoration: TextDecoration.underline,
                                                              ),
                                                              children: <InlineSpan>[
                                                                TextSpan(
                                                                  text:' on your wishlist has been restocked',
                                                                  style: TextStyle(
                                                                    color: Color(0xff454545),
                                                                    decoration: TextDecoration.none,
                                                                  ),
                                                                )
                                                              ])
                                                      ),
                                                    ),
                                                    Container(
                                                      child: Text(
                                                        '10 mins ago',
                                                        style: TextStyle(
                                                            color: Color(0xff968E8E),
                                                            fontSize: 8,
                                                            fontWeight: FontWeight.w500
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin:
                                        EdgeInsets.only(top: 5, bottom: 5),
                                        child: new Divider(
                                          color: CusColors.subTitleColor.withOpacity(0.2),
                                        ),
                                      ),
                                      Container(
                                        height: 90,
                                        width: 375,
                                        child: Container(
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(7),
                                              color: Color(0xFFDDD6D6).withOpacity(0.15)
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
                                                    gradient: LinearGradient(
                                                        begin: Alignment.topLeft,
                                                        end: Alignment.bottomRight,
                                                        colors: <Color>[
                                                          Color(0xffD9D9D9),
                                                          Color(0xffDDD6D6),
                                                        ])),
                                                child: Image.asset(
                                                    'assets/ae.png'),
                                              ),
                                              Container(
                                                width: 292,
                                                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                                                child: Column(
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                        padding: EdgeInsets.symmetric(
                                                            horizontal: 2,
                                                            vertical: 2
                                                        ),
                                                        child: Row(
                                                          mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                          children: [
                                                            Text(
                                                              'Product restocked',
                                                              style: TextStyle(
                                                                  color: CusColors.grey300,
                                                                  fontSize: 8,
                                                                  fontWeight: FontWeight.w500
                                                              ),
                                                            ),
                                                          ],
                                                        )),
                                                    Container(
                                                      margin: EdgeInsets.only(bottom: 8),
                                                      child: Text.rich(
                                                          TextSpan(
                                                              text: 'Acer Essentials Projector ',
                                                              recognizer: TapGestureRecognizer()..onTap = (){},
                                                              style: TextStyle(
                                                                fontSize: 12,
                                                                color: Color(0xff496956),
                                                                fontWeight: FontWeight.w500,
                                                                decoration: TextDecoration.underline,
                                                              ),
                                                              children: <InlineSpan>[
                                                                TextSpan(
                                                                  text:' on your wishlist has been restocked',
                                                                  style: TextStyle(
                                                                    color: Color(0xff454545),
                                                                    decoration: TextDecoration.none,
                                                                  ),
                                                                )
                                                              ])
                                                      ),
                                                    ),
                                                    Container(
                                                      child: Text(
                                                        '10 mins ago',
                                                        style: TextStyle(
                                                            color: Color(0xff968E8E),
                                                            fontSize: 8,
                                                            fontWeight: FontWeight.w500
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin:
                                        EdgeInsets.only(top: 5, bottom: 5),
                                        child: new Divider(
                                          color: CusColors.subTitleColor.withOpacity(0.2),
                                        ),
                                      ),
                                      Container(
                                        height: 90,
                                        width: 375,
                                        child: Container(
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(7),
                                              color: Color(0xFFDDD6D6).withOpacity(0.15)
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
                                                    gradient: LinearGradient(
                                                        begin: Alignment.topLeft,
                                                        end: Alignment.bottomRight,
                                                        colors: <Color>[
                                                          Color(0xffD9D9D9),
                                                          Color(0xffDDD6D6),
                                                        ])),
                                                child: Image.asset(
                                                    'assets/ae.png'),
                                              ),
                                              Container(
                                                width: 292,
                                                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                                                child: Column(
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                        padding: EdgeInsets.symmetric(
                                                            horizontal: 2,
                                                            vertical: 2
                                                        ),
                                                        child: Row(
                                                          mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                          children: [
                                                            Text(
                                                              'Product restocked',
                                                              style: TextStyle(
                                                                  color: CusColors.grey300,
                                                                  fontSize: 8,
                                                                  fontWeight: FontWeight.w500
                                                              ),
                                                            ),
                                                          ],
                                                        )),
                                                    Container(
                                                      margin: EdgeInsets.only(bottom: 8),
                                                      child: Text.rich(
                                                          TextSpan(
                                                              text: 'Acer Essentials Projector ',
                                                              recognizer: TapGestureRecognizer()..onTap = (){},
                                                              style: TextStyle(
                                                                fontSize: 12,
                                                                color: Color(0xff496956),
                                                                fontWeight: FontWeight.w500,
                                                                decoration: TextDecoration.underline,
                                                              ),
                                                              children: <InlineSpan>[
                                                                TextSpan(
                                                                  text:' on your wishlist has been restocked',
                                                                  style: TextStyle(
                                                                    color: Color(0xff454545),
                                                                    decoration: TextDecoration.none,
                                                                  ),
                                                                )
                                                              ])
                                                      ),
                                                    ),
                                                    Container(
                                                      child: Text(
                                                        '10 mins ago',
                                                        style: TextStyle(
                                                            color: Color(0xff968E8E),
                                                            fontSize: 8,
                                                            fontWeight: FontWeight.w500
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin:
                                        EdgeInsets.only(top: 5, bottom: 5),
                                        child: new Divider(
                                          color: CusColors.subTitleColor.withOpacity(0.2),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
