import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sarpras/pages/details.dart';
import 'package:sarpras/utils/constant.dart';
import 'package:get/get.dart';

class BigCard extends StatelessWidget {
  const BigCard({
    Key? key,
    this.image,
    this.category,
    this.name,
    this.stock
  }) : super(key: key);

  final String? image;
  final String? category;
  final String? name;
  final int? stock;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.to(Details()),
      child: Container(
        color: Color(0xFFDADADA).withOpacity(0.25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
                alignment: Alignment.center,
                children:[
                  Container(
                    width: 180,
                    height: 180,
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
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(image!)
                        )
                    ),
                  )
                ]
            ),
            Container(
              width: 180,
              padding: EdgeInsets.symmetric(horizontal: 3, vertical: 2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    category.toString(),
                    style: TextStyle(
                        color: CusColors.subTitleColor,
                        fontSize: 12
                    ),
                  ),
                  Container(
                    width: 120,
                    child: Text(
                      name.toString(),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: CusColors.titleColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    width: 180,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          stock.toString() + " Stock",
                          style: TextStyle(
                              color: CusColors.mainColor,
                              fontSize: 12,
                              fontWeight: FontWeight.w500
                          ),
                        ),
                        Icon(
                          CupertinoIcons.heart,
                          size: 18,
                          color: CusColors.mainColor,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
