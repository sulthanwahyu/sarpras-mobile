import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:sarpras/pages/components/cardList.dart';
import 'package:sarpras/pages/components/smallCard.dart';
import 'package:sarpras/pages/search/searchresult.dart';
import 'package:sarpras/utils/constant.dart';
import 'package:get/get.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFFE9E9E9),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 35, horizontal: 12),
        child: Column(
          children:[
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                GestureDetector(
                  onTap: ()=>Get.back(),
                  child: Container(
                    margin: EdgeInsets.only(right: 10),
                    child: Icon(
                      IconlyLight.arrow_left_2,
                      color: Color.fromRGBO(69, 69, 69, 100),
                    ),
                  ),
                ),
                Expanded(
                  child: TextField(
                    onSubmitted: (value)=>Get.off(Searchresult()),
                    autofocus: true,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: CusColors.grey100)
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: CusColors.grey100)
                        ),
                        focusColor: CusColors.grey300,
                        fillColor: CusColors.grey300,
                        contentPadding: EdgeInsets.only(left: 80),
                        hintText: "Search...",
                        prefixIcon: Padding(
                          padding: const EdgeInsets.only(bottom: 3),
                          child: Icon(IconlyLight.search, color: CusColors.grey100,),
                        )
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, left: 10, right: 4),
              child: Column(
                children: <Widget>[
                  GestureDetector(
                    onTap: ()=>Get.off(Searchresult()),
                    child: Container(
                      margin: EdgeInsets.only(bottom: 20),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            IconlyLight.time_circle,
                            color: CusColors.subTitleColor,
                          ),
                          Container(
                              padding: EdgeInsets.only(left: 10),
                              child: Spacer()),
                          Text(
                            "Laptop",
                            style: TextStyle(
                                color: CusColors.grey200,
                              fontWeight: FontWeight.w500
                            ),
                          ),
                          Spacer(),
                          Icon(
                            Icons.clear,
                            size: 18,
                            color: CusColors.subTitleColor,
                          )
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: ()=>Get.off(Searchresult()),
                    child: Container(
                      margin: EdgeInsets.only(bottom: 20),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            IconlyLight.time_circle,
                            color: CusColors.subTitleColor,
                          ),
                          Container(
                              padding: EdgeInsets.only(left: 10),
                              child: Spacer()),
                          Text(
                            "Laptop",
                            style: TextStyle(
                                color: CusColors.grey200,
                                fontWeight: FontWeight.w500
                            ),
                          ),
                          Spacer(),
                          Icon(
                            Icons.clear,
                            size: 18,
                            color: CusColors.subTitleColor,
                          )
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: ()=>Get.off(Searchresult()),
                    child: Container(
                      margin: EdgeInsets.only(bottom: 20),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            IconlyLight.time_circle,
                            color: CusColors.subTitleColor,
                          ),
                          Container(
                              padding: EdgeInsets.only(left: 10),
                              child: Spacer()),
                          Text(
                            "Laptop",
                            style: TextStyle(
                                color: CusColors.grey200,
                                fontWeight: FontWeight.w500
                            ),
                          ),
                          Spacer(),
                          Icon(
                            Icons.clear,
                            size: 18,
                            color: CusColors.subTitleColor,
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 5),
                    child: SizedBox(
                      width: 100,
                      child: ElevatedButton(
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30.0),
                                      side: BorderSide(width: 1, color: CusColors.subTitleColor)
                                  )
                              ),
                              shadowColor: MaterialStatePropertyAll(Colors.transparent),
                              backgroundColor: MaterialStateProperty.all(CusColors.appColor)
                          ),
                          onPressed: (){},
                          child: Text(
                            "Load More",
                            style: TextStyle(
                              color: CusColors.grey200,
                              fontSize: 12,
                            ),
                          )
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              width: double.infinity,
              child: Column(
                children: [
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
                              "Recently Viewed",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: CusColors.titleColor
                              ),
                            ),
                          ),
                        ],
                        ),
                        SizedBox(height: 10,),
                        Container(
                          child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Wrap(
                            spacing: 20,
                            children: [
                              recent(
                                  context,
                                  image: "assets/ae.png",
                                  category: "Projector",
                                  name: "Acer Essentials Projector"
                              ),recent(
                                  context,
                                  image: "assets/ae.png",
                                  category: "Projector",
                                  name: "Acer Essentials Projector"
                              ),recent(
                                  context,
                                  image: "assets/ae.png",
                                  category: "Projector",
                                  name: "Acer Essentials Projector"
                              ),recent(
                                  context,
                                  image: "assets/ae.png",
                                  category: "Projector",
                                  name: "Acer Essentials Projector"
                              ),recent(
                                  context,
                                  image: "assets/ae.png",
                                  category: "Projector",
                                  name: "Acer Essentials Projector"
                              ),recent(
                                  context,
                                  image: "assets/ae.png",
                                  category: "Projector",
                                  name: "Acer Essentials Projector"
                              ),recent(
                                  context,
                                  image: "assets/ae.png",
                                  category: "Projector",
                                  name: "Acer Essentials Projector"
                              ),
                            ],
                          )
                          ),
                        ),
                        SizedBox(height: 30,)
                      ],
                    ),
                  )
                ],
              ),
            ),
          ]
        )
      )
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
