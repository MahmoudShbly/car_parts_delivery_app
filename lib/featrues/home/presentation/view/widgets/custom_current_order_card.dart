import 'package:car_parts_delivery_app/core/utils/app_colors.dart';
import 'package:car_parts_delivery_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomLastOrderCard extends StatelessWidget {
  const CustomLastOrderCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      child: Card(
        color: const Color.fromARGB(255, 14, 38, 70),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: BorderSide(color: AppColors.secondaryColor),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            bottom: 10,
            left: 16,
            right: 16,
            top: 16,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                'اسم القطعة',
                style: Styles.textStyle20.copyWith(fontWeight: FontWeight.bold),
              ),
              Text(
                'الموديل',
                style: Styles.textStyle18,
              ),
              Text(
                'وصف مختصر للقطعة',
                style: Styles.textStyle16,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              Spacer(),
              OrderStateSection(),
            ],
          ),
        ),
      ),
    );
  }
}

class OrderStateSection extends StatelessWidget {
  const OrderStateSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: AppColors.secondaryColor,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Text(
            'قيد المعاجة',
            style: Styles.textStyle14.copyWith(color: Colors.white),
          ),
        ),
        Spacer(),
        Container(
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Text(
            'الغاء الطلب',
            style: Styles.textStyle14.copyWith(color: Colors.white),
          ),
        ),
      ],
    );
  }
}
