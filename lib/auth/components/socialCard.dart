import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SocialCard extends StatelessWidget {
  const SocialCard({
    Key? key,
    this.icon,
    this.press,
  }) : super(key: key);

  final String? icon;
  final VoidCallback? press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        padding: EdgeInsets.all(10),
        height: 45,
        width: 45,
        decoration: BoxDecoration(
          color: Color(0xFFDBDEDE),
          shape: BoxShape.circle
        ),
        child: SvgPicture.asset(icon!),
      ),
    );
  }
}
