import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:sarpras/pages/components/categoryCard.dart';
import 'package:sarpras/pages/search/search.dart';
import 'package:sarpras/utils/constant.dart';

class CategoryPage extends StatelessWidget {
  final List<CategoryCard> card = List.generate(10, (index){
    return CategoryCard(
      name: "Laptops",
      image: "assets/colle.jpg",
      amount: 13,
    );
  });


  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      padding: EdgeInsets.only(left: 15, right: 15, top: 32),
      child: Column(
         mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Text(
                "Collection",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                color: CusColors.titleColor,
                fontSize: 18
              ),
            ),
          ),
          SizedBox(height: 8,),
          TextField(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                  builder: (context) => Search(),
              ));
            },
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
                hintText: "Search by collection...",
                prefixIcon: Padding(
                  padding: const EdgeInsets.only(bottom: 3),
                  child: Icon(IconlyLight.search, color: CusColors.grey100,),
                ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 5),
              child: GridView(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 21,
                      crossAxisSpacing: 20,
                      mainAxisExtent: 121
                  ),
                children: card,
              ),
            ),
          ),
          SizedBox(height: 70,),
        ],
      ),
    );
  }
}