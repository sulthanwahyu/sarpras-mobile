import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:sarpras/pages/components/bigCard.dart';
import 'package:sarpras/pages/components/cardList.dart';
import 'package:sarpras/pages/components/smallCard.dart';
import 'package:get/get.dart';

class Searchresult extends StatelessWidget {
  final List<BigCard> card = List.generate(10, (index){
    return BigCard(
      image: "assets/ae.png",
      stock: 3,
      name: "Acer Essentials Projector",
      category: "Projector",
    );
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xffE7E7E7),
        child: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                Flexible(
                  flex: 0,
                  child: Container(
                    color: Color(0xffDCDCDC),
                    padding: EdgeInsets.only(top: 40, right: 10),
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 15, bottom: 5),
                          child: Row(
                            children: [
                              GestureDetector(
                                onTap: ()=>Get.back(),
                                child: Icon(
                                  Icons.arrow_back_ios_new,
                                  color: Color(0xff454545),
                                  size: 16,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 15),
                                height: 45,
                                width: 350,
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(233, 233, 233, 100),
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(
                                      color:
                                          Color.fromRGBO(150, 142, 142, 100)),
                                ),
                                child: Row(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(left: 10),
                                      child: Icon(
                                        Icons.search,
                                        size: 20,
                                        color:
                                            Color.fromRGBO(150, 142, 142, 100),
                                      ),
                                    ),
                                    Expanded(
                                      child: TextField(
                                        decoration: InputDecoration(
                                            contentPadding: EdgeInsets.only(
                                                left: 9, bottom: 7),
                                            hintText: 'Acer',
                                            hintStyle: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 14,
                                                color: Color.fromRGBO(
                                                    150, 142, 142, 100)),
                                            enabledBorder: InputBorder.none,
                                            focusedBorder: InputBorder.none),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding:
                              EdgeInsets.only(top: 10, left: 10, right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                width: 46,
                                height: 40,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(7),
                                    border: Border.all(color: Color(0xffCDCDCD)),
                                    gradient: const LinearGradient(
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                        colors: <Color>[
                                          Color(0xffD7D7D7),
                                          Color(0xffD7D7D7),
                                        ])),
                                margin: EdgeInsets.only(bottom: 15, right: 10),
                                child: TextButton(
                                  onPressed: () {},
                                  child: Container(
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(left: 2),
                                          height: 40,
                                          child: Icon(
                                            IconlyLight.filter,
                                            color: Color(0xff496956),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [

                                      Container(
                                        width: 140,
                                        height: 55,
                                        margin:
                                            EdgeInsets.only(bottom: 15, right: 10),
                                        child: TextButton(
                                          onPressed: () {},
                                          child: Container(
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(7),
                                              border: Border.all(
                                                  color: Color(0xffCDCDCD)),
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Container(
                                                  width: 40,
                                                  height: 55,
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(7),
                                                      border: Border.all(
                                                          color: Color(0xffCDCDCD)),
                                                      gradient: const LinearGradient(
                                                          begin: Alignment.topLeft,
                                                          end: Alignment.bottomRight,
                                                          colors: <Color>[
                                                            Color(0xffD7D7D7),
                                                            Color(0xffD7D7D7),
                                                          ])),
                                                  child: Icon(
                                                    IconlyLight.game,
                                                    color: Color(0xff496956),
                                                  ),
                                                ),
                                                Container(
                                                  padding: const EdgeInsets.all(10),
                                                  child: Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.start,
                                                    children: [
                                                      Container(
                                                        child: Text(
                                                          'Electronic',
                                                          style: TextStyle(
                                                              fontFamily: 'Poppins',
                                                              fontSize: 11,
                                                              color:
                                                                  Color(0xff454545)),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: 140,
                                        height: 55,
                                        margin:
                                            EdgeInsets.only(bottom: 15, right: 10),
                                        child: TextButton(
                                          onPressed: () {},
                                          child: Container(
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(7),
                                              border: Border.all(
                                                  color: Color(0xffCDCDCD)),
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Container(
                                                  width: 40,
                                                  height: 55,
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(7),
                                                      border: Border.all(
                                                          color: Color(0xffCDCDCD)),
                                                      gradient: const LinearGradient(
                                                          begin: Alignment.topLeft,
                                                          end: Alignment.bottomRight,
                                                          colors: <Color>[
                                                            Color(0xffD7D7D7),
                                                            Color(0xffD7D7D7),
                                                          ])),
                                                  child: Icon(
                                                    IconlyLight.ticket_star,
                                                    color: Color(0xff496956),
                                                  ),
                                                ),
                                                Container(
                                                  padding: const EdgeInsets.all(10),
                                                  child: Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.start,
                                                    children: [
                                                      Container(
                                                        child: Text(
                                                          'Event Tools',
                                                          style: TextStyle(
                                                              fontFamily: 'Poppins',
                                                              fontSize: 11,
                                                              color:
                                                                  Color(0xff454545)),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: 140,
                                        height: 55,
                                        margin:
                                            EdgeInsets.only(bottom: 15, right: 10),
                                        child: TextButton(
                                          onPressed: () {},
                                          child: Container(
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(7),
                                              border: Border.all(
                                                  color: Color(0xffCDCDCD)),
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Container(
                                                  width: 40,
                                                  height: 55,
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(7),
                                                      border: Border.all(
                                                          color: Color(0xffCDCDCD)),
                                                      gradient: const LinearGradient(
                                                          begin: Alignment.topLeft,
                                                          end: Alignment.bottomRight,
                                                          colors: <Color>[
                                                            Color(0xffD7D7D7),
                                                            Color(0xffD7D7D7),
                                                          ])),
                                                  child: Icon(
                                                    IconlyLight.video,
                                                    color: Color(0xff496956),
                                                  ),
                                                ),
                                                Container(
                                                  padding: const EdgeInsets.all(10),
                                                  child: Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.start,
                                                    children: [
                                                      Container(
                                                        child: Text(
                                                          'Projector',
                                                          style: TextStyle(
                                                              fontFamily: 'Poppins',
                                                              fontSize: 11,
                                                              color:
                                                                  Color(0xff454545)),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: 140,
                                        height: 55,
                                        margin:
                                            EdgeInsets.only(bottom: 15, right: 10),
                                        child: TextButton(
                                          onPressed: () {},
                                          child: Container(
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(7),
                                              border: Border.all(
                                                  color: Color(0xffCDCDCD)),
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Container(
                                                  width: 40,
                                                  height: 55,
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(7),
                                                      border: Border.all(
                                                          color: Color(0xffCDCDCD)),
                                                      gradient: const LinearGradient(
                                                          begin: Alignment.topLeft,
                                                          end: Alignment.bottomRight,
                                                          colors: <Color>[
                                                            Color(0xffD7D7D7),
                                                            Color(0xffD7D7D7),
                                                          ])),
                                                  child: Icon(
                                                    Icons.display_settings,
                                                    color: Color(0xff496956),
                                                  ),
                                                ),
                                                Container(
                                                  padding: const EdgeInsets.all(10),
                                                  child: Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.start,
                                                    children: [
                                                      Container(
                                                        child: Text(
                                                          'Electronic',
                                                          style: TextStyle(
                                                              fontFamily: 'Poppins',
                                                              fontSize: 11,
                                                              color:
                                                                  Color(0xff454545)),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: 140,
                                        height: 55,
                                        margin: EdgeInsets.only(
                                          bottom: 15,
                                        ),
                                        child: TextButton(
                                          onPressed: () {},
                                          child: Container(
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(7),
                                              border: Border.all(
                                                  color: Color(0xffCDCDCD)),
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Container(
                                                  width: 40,
                                                  height: 55,
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(7),
                                                      border: Border.all(
                                                          color: Color(0xffCDCDCD)),
                                                      gradient: const LinearGradient(
                                                          begin: Alignment.topLeft,
                                                          end: Alignment.bottomRight,
                                                          colors: <Color>[
                                                            Color(0xffD7D7D7),
                                                            Color(0xffD7D7D7),
                                                          ])),
                                                  child: Icon(
                                                    Icons.display_settings,
                                                    color: Color(0xff496956),
                                                  ),
                                                ),
                                                Container(
                                                  padding: const EdgeInsets.all(10),
                                                  child: Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.start,
                                                    children: [
                                                      Container(
                                                        child: Text(
                                                          'Electronic',
                                                          style: TextStyle(
                                                              fontFamily: 'Poppins',
                                                              fontSize: 11,
                                                              color:
                                                                  Color(0xff454545)),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Flexible(
                  flex: 4,
                  child: ListView(
                    children: [
                      Container(
                        padding: EdgeInsets.only(top: 0, left: 10, right: 10, bottom: 10),
                        child: Column(
                          children: [
                            GridView(
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  mainAxisSpacing:21,
                                  crossAxisSpacing: 21,
                                  mainAxisExtent: 300
                              ),
                              children: card,
                            ),
                            CardList(
                                title: "Acer",
                                child: Wrap(
                                  spacing: 20,
                                  children: [
                                    SmallCard(
                                      image: "assets/ae.png",
                                      category: "Projector",
                                      name: "Acer Essentials Projector",
                                      stock: 3,
                                    ),
                                    SmallCard(
                                      image: "assets/ae.png",
                                      category: "Projector",
                                      name: "Acer Essentials Projector",
                                      stock: 3,
                                    ),
                                    SmallCard(
                                      image: "assets/ae.png",
                                      category: "Projector",
                                      name: "Acer Essentials Projector",
                                      stock: 3,
                                    ),
                                    SmallCard(
                                      image: "assets/ae.png",
                                      category: "Projector",
                                      name: "Acer Essentials Projector",
                                      stock: 3,
                                    ),
                                    SmallCard(
                                      image: "assets/ae.png",
                                      category: "Projector",
                                      name: "Acer Essentials Projector",
                                      stock: 3,
                                    ),
                                    SmallCard(
                                      image: "assets/ae.png",
                                      category: "Projector",
                                      name: "Acer Essentials Projector",
                                      stock: 3,
                                    ),
                                  ],
                                )),
                          ],
                        ),
                      ),
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
