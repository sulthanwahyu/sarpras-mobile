import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:get/get.dart';
import 'package:sarpras/pages/cart.dart';
import 'package:sarpras/pages/components/cardList.dart';
import 'package:sarpras/pages/components/categoryIcon.dart';
import 'package:sarpras/pages/components/smallCard.dart';
import 'package:sarpras/pages/notification.dart';
import 'package:sarpras/pages/search/search.dart';
import 'package:sarpras/utils/constant.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatelessWidget {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [

          ListView(
            scrollDirection: Axis.vertical,
            children:[
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(top:22, left: 22, right: 22, bottom: 10),
                    color: CusColors.whiteMain,
                    child: Column(
                      children: [
                        Container(
                          width: double.infinity,
                          color: CusColors.whiteMain,
                          height: 45,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: TextField(
                                  onTap: ()=>Get.to(Search(), transition: Transition.fadeIn),
                                  autofocus: false,

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
                              Container(
                                padding: EdgeInsets.only(left: 12),
                                width: 120,
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
                        SizedBox(height: 15,),
                        Container(
                          padding: EdgeInsets.only(left: 12),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                      "All you need",
                                    style: TextStyle(
                                      color: CusColors.titleColor,
                                      fontSize: 16
                                    ),
                                  ),
                                  RichText(
                                    text: TextSpan(
                                      text: "Is ",
                                      style: TextStyle(
                                        color: CusColors.titleColor,
                                        fontSize: 32
                                      ),
                                      children: <InlineSpan>[
                                        TextSpan(
                                          text: "Sarpras",
                                          style: TextStyle(
                                            color: CusColors.mainColor,
                                            decoration: TextDecoration.underline
                                          )
                                        )
                                      ]
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                  width: 170,
                                  height: 170,
                                  child: Image(image: AssetImage("assets/logo.png"))
                              )
                            ],
                          ),
                        ),
                      ],
                    )
                  ),

                  Container(
                    color: kwhite,
                    width: double.infinity,
                    padding: EdgeInsets.only(top: 10),
                    child: Column(
                      children: [
                        Container(
                          width: double.infinity,
                          padding: EdgeInsets.only(top: 15),
                          height: 150,
                          child: PageView(
                            controller: _controller,
                            children:[
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(width: 2,),
                                  CategoryIcon(
                                    icon: IconlyLight.calendar,
                                    category: "Camera"
                                  ),
                                  CategoryIcon(
                                    icon: IconlyLight.game,
                                    category: "Electronic"
                                  ),CategoryIcon(
                                    icon: IconlyLight.video,
                                    category: "Projector"
                                  ),CategoryIcon(
                                    icon: IconlyLight.ticket_star,
                                    category: "Event Tool"
                                  ),CategoryIcon(
                                    icon: IconlyLight.game,
                                    category: "Electronic"
                                  ),
                                  SizedBox(width: 2,),

                                ],
                              ),Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(width: 2,),
                                  categoryList(
                                    context,
                                    icon: IconlyLight.camera,
                                    category: "Camera"
                                  ),
                                  categoryList(
                                    context,
                                    icon: IconlyLight.game,
                                    category: "Electronic"
                                  ),categoryList(
                                    context,
                                    icon: IconlyLight.game,
                                    category: "Electronic"
                                  ),categoryList(
                                    context,
                                    icon: IconlyLight.game,
                                    category: "Electronic"
                                  ),categoryList(
                                    context,
                                    icon: IconlyLight.game,
                                    category: "Electronic"
                                  ),
                                  SizedBox(width: 2,),

                                ],
                              ),Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(width: 2,),
                                  categoryList(
                                    context,
                                    icon: IconlyLight.camera,
                                    category: "Camera"
                                  ),
                                  categoryList(
                                    context,
                                    icon: IconlyLight.game,
                                    category: "Electronic"
                                  ),categoryList(
                                    context,
                                    icon: IconlyLight.video,
                                    category: "Projector"
                                  ),categoryList(
                                    context,
                                    icon: IconlyLight.ticket_star,
                                    category: "Event Tools"
                                  ),categoryList(
                                    context,
                                    icon: IconlyLight.more_square,
                                    category: "More"
                                  ),
                                  SizedBox(width: 2,),

                                ],
                              ),
                            ]
                          ),
                        ),
                        Container(
                          transform: Matrix4.translationValues(0, -22, 9),
                          child: SmoothPageIndicator(
                              controller: _controller,
                              count: 3,
                            effect: ExpandingDotsEffect(
                              dotHeight: 5,
                              dotWidth: 6,
                              spacing: 3,
                              activeDotColor: CusColors.mainColor,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),

                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.only(left: 5),
                    margin: EdgeInsets.only(top:15),
                    child: Column(
                      children: [
                        CardList(
                          title: "Perfect for you",
                          onClick: HomePage(),
                          child: Wrap(
                            spacing: 20,
                            children: [
                              SmallCard(
                                image: "assets/ae.png",
                                category: "Projector",
                                name: "Acer Essentials Projector",
                                stock: 3,
                              ),SmallCard(
                                image: "assets/ae.png",
                                category: "Projector",
                                name: "Acer Essentials Projector",
                                stock: 3,
                              ),SmallCard(
                                image: "assets/ae.png",
                                category: "Projector",
                                name: "Acer Essentials Projector",
                                stock: 3,
                              ),SmallCard(
                                image: "assets/ae.png",
                                category: "Projector",
                                name: "Acer Essentials Projector",
                                stock: 3,
                              ),SmallCard(
                                image: "assets/ae.png",
                                category: "Projector",
                                name: "Acer Essentials Projector",
                                stock: 3,
                              ),SmallCard(
                                image: "assets/ae.png",
                                category: "Projector",
                                name: "Acer Essentials Projector",
                                stock: 3,
                              ),
                            ],
                          )
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.only(left: 5),
                    margin: EdgeInsets.only(top:15),
                    child: Column(
                      children: [
                        CardList(
                          title: "Perfect for you",
                          onClick: HomePage(),
                          child: Wrap(
                            spacing: 20,
                            children: [
                              SmallCard(
                                image: "assets/ae.png",
                                category: "Projector",
                                name: "Acer Essentials Projector",
                                stock: 3,
                              ),SmallCard(
                                image: "assets/ae.png",
                                category: "Projector",
                                name: "Acer Essentials Projector",
                                stock: 3,
                              ),SmallCard(
                                image: "assets/ae.png",
                                category: "Projector",
                                name: "Acer Essentials Projector",
                                stock: 3,
                              ),SmallCard(
                                image: "assets/ae.png",
                                category: "Projector",
                                name: "Acer Essentials Projector",
                                stock: 3,
                              ),SmallCard(
                                image: "assets/ae.png",
                                category: "Projector",
                                name: "Acer Essentials Projector",
                                stock: 3,
                              ),SmallCard(
                                image: "assets/ae.png",
                                category: "Projector",
                                name: "Acer Essentials Projector",
                                stock: 3,
                              ),
                            ],
                          )
                        ),
                      ],
                    ),
                  ),Container(
                    width: double.infinity,
                    padding: EdgeInsets.only(left: 5),
                    margin: EdgeInsets.only(top:15),
                    child: Column(
                      children: [
                        CardList(
                          title: "Perfect for you",
                          onClick: HomePage(),
                          child: Wrap(
                            spacing: 20,
                            children: [
                              SmallCard(
                                image: "assets/ae.png",
                                category: "Projector",
                                name: "Acer Essentials Projector",
                                stock: 3,
                              ),SmallCard(
                                image: "assets/ae.png",
                                category: "Projector",
                                name: "Acer Essentials Projector",
                                stock: 3,
                              ),SmallCard(
                                image: "assets/ae.png",
                                category: "Projector",
                                name: "Acer Essentials Projector",
                                stock: 3,
                              ),SmallCard(
                                image: "assets/ae.png",
                                category: "Projector",
                                name: "Acer Essentials Projector",
                                stock: 3,
                              ),SmallCard(
                                image: "assets/ae.png",
                                category: "Projector",
                                name: "Acer Essentials Projector",
                                stock: 3,
                              ),SmallCard(
                                image: "assets/ae.png",
                                category: "Projector",
                                name: "Acer Essentials Projector",
                                stock: 3,
                              ),
                            ],
                          )
                        ),
                      ],
                    ),
                  ),Container(
                    width: double.infinity,
                    padding: EdgeInsets.only(left: 5),
                    margin: EdgeInsets.only(top:15),
                    child: Column(
                      children: [
                        CardList(
                          title: "Perfect for you",
                          onClick: HomePage(),
                          child: Wrap(
                            spacing: 20,
                            children: [
                              SmallCard(
                                image: "assets/ae.png",
                                category: "Projector",
                                name: "Acer Essentials Projector",
                                stock: 3,
                              ),SmallCard(
                                image: "assets/ae.png",
                                category: "Projector",
                                name: "Acer Essentials Projector",
                                stock: 3,
                              ),SmallCard(
                                image: "assets/ae.png",
                                category: "Projector",
                                name: "Acer Essentials Projector",
                                stock: 3,
                              ),SmallCard(
                                image: "assets/ae.png",
                                category: "Projector",
                                name: "Acer Essentials Projector",
                                stock: 3,
                              ),SmallCard(
                                image: "assets/ae.png",
                                category: "Projector",
                                name: "Acer Essentials Projector",
                                stock: 3,
                              ),SmallCard(
                                image: "assets/ae.png",
                                category: "Projector",
                                name: "Acer Essentials Projector",
                                stock: 3,
                              ),
                            ],
                          )
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 60,)


                ],
              ),
            ]
          ),

          Container(
            color: CusColors.whiteMain,
            padding: EdgeInsets.only(top:46, left: 22, right: 22, bottom: 10),
            child: Container(
              width: double.infinity,
              height: 45,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: TextField(
                      onTap: ()=>Get.to(Search(), transition: Transition.fadeIn),
                      autofocus: false,

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
                  Container(
                    padding: EdgeInsets.only(left: 12),
                    width: 120,
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
          ),
          // Container(
          //   height: 105,
          //   alignment: Alignment.center,
          //   decoration: BoxDecoration(
          //       color: CusColors.whiteMain,
          //       boxShadow: [BoxShadow(
          //       blurRadius: 1,spreadRadius: 2,color: Colors.black.withOpacity(0.2)
          //     )]
          //   ),
          //   child: Container(
          //     width: double.infinity,
          //     margin: EdgeInsets.only(top: 25, bottom: 5),
          //     padding: EdgeInsets.symmetric(horizontal: 22,),
          //     color: CusColors.whiteMain,
          //     height: 45,
          //     child: Row(
          //       crossAxisAlignment: CrossAxisAlignment.start,
          //       children: [
          //         Expanded(
          //           child: TextField(
          //             decoration: InputDecoration(
          //                 border: OutlineInputBorder(
          //                     borderRadius: BorderRadius.circular(10)
          //                 ),
          //                 enabledBorder: OutlineInputBorder(
          //                     borderRadius: BorderRadius.circular(10),
          //                     borderSide: BorderSide(color: CusColors.grey100)
          //                 ),
          //                 focusedBorder: OutlineInputBorder(
          //                     borderRadius: BorderRadius.circular(10),
          //                     borderSide: BorderSide(color: CusColors.grey100)
          //                 ),
          //                 focusColor: CusColors.grey300,
          //                 fillColor: CusColors.grey300,
          //                 contentPadding: EdgeInsets.only(left: 80),
          //                 hintText: "Search...",
          //                 prefixIcon: Padding(
          //                   padding: const EdgeInsets.only(bottom: 3),
          //                   child: Icon(IconlyLight.search, color: CusColors.grey100,),
          //                 )
          //             ),
          //           ),
          //         ),
          //         Container(
          //           padding: EdgeInsets.only(left: 12),
          //           width: 120,
          //           child: Row(
          //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //             children: [
          //               Stack(
          //                   children:[
          //                     Container(
          //                       width: 48,
          //                       height: 48,
          //                       alignment: Alignment.center,
          //                       decoration: BoxDecoration(
          //                         shape: BoxShape.circle,
          //                         color: CusColors.grey100.withOpacity(0.1),
          //                       ),
          //                       child: Icon(
          //                         IconlyLight.bag,
          //                         color: CusColors.titleColor,
          //                         size: 28,
          //                       ),
          //                     ),
          //                     Positioned(
          //                       right: 0,
          //                       child: Container(
          //                         width: 15,
          //                         height: 15,
          //                         alignment: Alignment.center,
          //                         transform: Matrix4.translationValues(1, -1, 0),
          //                         child: Text("3", style: TextStyle(color: Colors.white,fontSize: 8),),
          //                         decoration: BoxDecoration(
          //                             shape: BoxShape.circle,
          //                             color: CusColors.pinkMain
          //                         ),
          //                       ),
          //                     )
          //                   ]
          //               ),
          //               Stack(
          //                   children:[
          //                     Container(
          //                       width: 45,
          //                       height: 45,
          //                       alignment: Alignment.center,
          //                       decoration: BoxDecoration(
          //                         shape: BoxShape.circle,
          //                         color: CusColors.grey100.withOpacity(0.1),
          //                       ),
          //                       child: Icon(
          //                         IconlyLight.notification,
          //                         color: CusColors.titleColor,
          //                         size: 28,
          //                       ),
          //                     ),
          //                     Positioned(
          //                       right: 0,
          //                       child: Container(
          //                         width: 15,
          //                         height: 15,
          //                         alignment: Alignment.center,
          //                         transform: Matrix4.translationValues(1, -1, 0),
          //                         child: Text("3", style: TextStyle(color: Colors.white,fontSize: 8),),
          //                         decoration: BoxDecoration(
          //                             shape: BoxShape.circle,
          //                             color: CusColors.pinkMain
          //                         ),
          //                       ),
          //                     )
          //                   ]
          //               )
          //             ],
          //           ),
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }

  Widget categoryList(BuildContext context, {required icon, required category, onclick}){
    return Container(
      child: Column(
        children: [
          GestureDetector(
            onTap: (){},
            child: Container(
              width: 55,
              height: 55,
              decoration: BoxDecoration(
                  color: CusColors.mainColor.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Icon(icon, size: 30,),
            ),
          ),
          SizedBox(height: 6,),
          Text(
            category,
            style: TextStyle(
                color: CusColors.grey300,
                fontSize: 12
            ),
          )
        ],
      ),
    );
  }

  Widget ListedCategory(BuildContext context, {required child}){
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(width: 2,),
        child,
        SizedBox(width: 2,),
      ],
    );
  }

}
