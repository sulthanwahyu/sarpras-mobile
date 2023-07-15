import 'package:flutter/material.dart';
import 'package:sarpras/utils/constant.dart';

class CategoryIcon extends StatelessWidget {
  const CategoryIcon({
    Key? key,
    this.icon,
    this.category,
  }) : super(key: key);

  final IconData? icon;
  final String? category;

  @override
  Widget build(BuildContext context) {
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
            category.toString(),
            style: TextStyle(
                color: CusColors.grey300,
                fontSize: 12
            ),
          )
        ],
      ),
    );
  }
}
