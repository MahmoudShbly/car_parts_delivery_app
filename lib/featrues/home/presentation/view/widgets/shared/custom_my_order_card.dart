import 'package:car_parts_delivery_app/core/utils/app_colors.dart';
import 'package:car_parts_delivery_app/core/utils/styles.dart';
import 'package:car_parts_delivery_app/core/utils/temp.dart';
import 'package:car_parts_delivery_app/featrues/home/presentation/view/widgets/shared/order_state_cancel_section.dart';
import 'package:flutter/material.dart';

class CustomMyOrderCard extends StatelessWidget {
  const CustomMyOrderCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      child: Card(
        color:Temp.isAdmin?Colors.white: const Color.fromARGB(255, 14, 38, 70),
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
                style: Styles.textStyle20.copyWith(fontWeight: FontWeight.bold, color: Temp.isAdmin ? AppColors.primaryColor : Colors.white),
              ),
              Text('الموديل', style: Styles.textStyle18.copyWith(color: Temp.isAdmin ? AppColors.primaryColor : Colors.white)),
              Text(
                'وصف مختصر للقطعة',
                style: Styles.textStyle16.copyWith(color: Temp.isAdmin ? AppColors.primaryColor : Colors.white),
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
              Spacer(),
              OrderStateCancelSection(),
            ],
          ),
        ),
      ),
    );
  }
}
