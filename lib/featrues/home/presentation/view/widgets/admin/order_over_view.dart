import 'package:car_parts_delivery_app/core/utils/app_colors.dart';
import 'package:car_parts_delivery_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class OrderOverView extends StatelessWidget {
  const OrderOverView({super.key, required this.title, required this.onTap});
  final String title;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(16),
        height: 100,
        decoration: BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: Text(
            title,
            style: Styles.textStyle24.copyWith(color: Colors.white,fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
