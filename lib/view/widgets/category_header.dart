import 'package:flutter/material.dart';
import 'package:pixa_vista/constants/colors.dart';

class CategoryHeader extends StatelessWidget {
  final double height;
  final double width;
  final String headerQuery;
  final String headerBackgroundImage;

  const CategoryHeader({
    super.key,
    required this.width,
    required this.height,
    required this.headerQuery,
    required this.headerBackgroundImage,
  });

  @override
  Widget build(BuildContext context) {
    var calculatedHeight = width / 5;

    if (calculatedHeight < height / 5) {
      calculatedHeight = height / 5;
    }
    return Container(
      height: calculatedHeight,
      width: width,
      margin: EdgeInsets.symmetric(vertical: 15),
      decoration: BoxDecoration(
        color: MyColors.lightGreen1,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade600,
            offset: const Offset(0.0, 12.0),
            blurRadius: 10.0,
            spreadRadius: -5.0,
          ),
        ],
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(
          image: NetworkImage(headerBackgroundImage),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            Colors.black.withOpacity(0.4),
            BlendMode.darken,
          ),
        ),
      ),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Colors.black54,
                Colors.transparent,
                Colors.black54,
              ], begin: Alignment.centerLeft, end: Alignment.centerRight),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          Container(
            width: width,
            alignment: Alignment.center,
            child: Text(
              headerQuery,
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
