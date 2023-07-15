import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sarpras/pages/components/smallCard.dart';
import 'package:sarpras/pages/see_more.dart';
import 'package:sarpras/utils/constant.dart';

class CardList extends StatelessWidget {
  const CardList({
    Key? key,
    this.title,
    this.onClick,
    this.child,
  }) : super(key: key);

  final String? title;
  final Widget? onClick;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
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
                  title.toString(),
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: CusColors.titleColor
                  ),
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SeeMore(),));
                },
                child: Text(
                  "See more",
                  style: TextStyle(
                      color: CusColors.mainColor,
                      fontSize: 12,
                      fontWeight: FontWeight.w500
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 10,),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
              child: child!
          ),
          SizedBox(height: 30,)
        ],
      ),
    );
  }
}
