import 'package:flutter/material.dart';
import 'package:sarpras/utils/constant.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    this.image,
    this.name,
    this.amount,
  }) : super(key: key);

  final String? image;
  final String? name;
  final int? amount;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Stack(
            children:[
              Image(
                image: AssetImage(image!),
                width: 180,
              ),
              Container(
                width: 180,
                height: 120,
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 14,top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name.toString(),
                        style: TextStyle(
                            color: kwhite,
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                            letterSpacing: .2
                        ),
                      ),
                      Text(
                        amount.toString() + " Products",
                        style: TextStyle(
                            color: Color(0xFFE6E6E6),
                            fontSize: 12,
                            fontWeight: FontWeight.w500
                        ),
                      )
                    ],
                  ),
                ),
              )
            ]
        )
    );
  }
}
