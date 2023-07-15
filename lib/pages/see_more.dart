import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sarpras/pages/components/bigCard.dart';
import 'package:sarpras/utils/constant.dart';

class SeeMore extends StatelessWidget {
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
      appBar: AppBar(
        leadingWidth: double.infinity,
        leading: Row(
          children: [
            Container(
                padding: EdgeInsets.only(left: 10),
                child: GestureDetector(
                  onTap: (){Navigator.of(context).pop();},
                  child: Icon(
                    CupertinoIcons.chevron_left,
                    weight: 1.5,
                    color: Color(0xFF968E8E),
                    size: 20,
                  ),
                )
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12, left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "showing",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Color(0xFFAFA8A8),
                        fontSize: 10
                    ),
                  ),
                  Container(
                    transform: Matrix4.translationValues(0, -4, 0),
                    child: Text(
                      "Perfect for you",
                      style: TextStyle(
                        color: CusColors.titleColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),

      ),
      body: GridView(
        shrinkWrap: true,
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing:21,
            crossAxisSpacing: 21,
            mainAxisExtent: 300
          ),
        children: card,
      ),
    );
  }
}
