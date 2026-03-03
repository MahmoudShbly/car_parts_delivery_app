import 'package:car_parts_delivery_app/core/utils/app_colors.dart';
import 'package:car_parts_delivery_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class OptionCard extends StatelessWidget {
  const OptionCard({
    super.key,
    required this.title,
    required this.icon,
    required this.onTap,
  });
  final String title;
  final IconData icon;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        height: 60,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 4,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          children: <Widget>[
            Icon(icon, size: 24, color: AppColors.secondaryColor),
            SizedBox(width: 16),
            Text(title, style: Styles.textStyle16.copyWith(color: AppColors.primaryColor)),
            Spacer(),
            Icon(Icons.arrow_forward_ios, size: 16, color: AppColors.secondaryColor),
          ],
        ),
      ),
    );
  }
}