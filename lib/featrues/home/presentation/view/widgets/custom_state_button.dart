import 'package:car_parts_delivery_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomStateButton extends StatelessWidget {
  const CustomStateButton({
    super.key, required this.title, required this.bgColor,
  });
 final String title;
 final Color bgColor;
 
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
       title,
        style: Styles.textStyle14.copyWith(color: Colors.white),
      ),
    );
  }
}
