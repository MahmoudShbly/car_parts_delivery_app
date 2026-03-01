import 'package:car_parts_delivery_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class OrderButton extends StatelessWidget {
  const OrderButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
  width: double.infinity,
  height: 60,
  child: ElevatedButton(
    style: ElevatedButton.styleFrom(
      backgroundColor:AppColors.secondaryColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      elevation: 6,
    ),
    onPressed: () {
      // TODO: الانتقال لشاشة إنشاء الطلب
     
    },
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Icon(Icons.car_repair, color: Colors.white, size: 26),
        SizedBox(width: 10),
        Text(
          'اطلب قطعة الآن',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ],
    ),
  ),
);
  }
}
