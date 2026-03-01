import 'package:car_parts_delivery_app/core/utils/app_colors.dart';
import 'package:car_parts_delivery_app/core/utils/app_dialog.dart';
import 'package:car_parts_delivery_app/core/utils/styles.dart';
import 'package:car_parts_delivery_app/core/widgets/custom_text_form_field_component.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class OrderButton extends StatelessWidget {
  const OrderButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 60,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.secondaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          elevation: 6,
        ),
        onPressed: () {
          showAppDialog(
            context: context,
            confirmColor: AppColors.secondaryColor,
            title: Row(
              children: <Widget>[
                Text('طلب قطعة غيار',style: Styles.textStyle26,),
                SizedBox(width: 12, height: 0.0),
                Icon( Icons.car_repair, color: AppColors.secondaryColor, size: 28),
              
              ],
            ),
            content: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('اسم القطعة:' ,style: Styles.textStyle18,),
                CustomTextFormFieldComponent(hint:  'اكتب اسم القطعة هنا'),
                Text('نوع السيارة :' ,style: Styles.textStyle18,),
                CustomTextFormFieldComponent(hint:  'Toyota, Hyundai, ...'),
                Text('الموديل:' ,style: Styles.textStyle18,),
                CustomTextFormFieldComponent(hint:  'اكتب موديل السيارة هنا'),
                Text('الوصف:' ,style: Styles.textStyle18,),
                CustomTextFormFieldComponent(hint:  'اكتب وصف القطعة هنا'),
              ],
            ),
            onConfirm: (){GoRouter.of(context).pop();},
            cancelText: 'الغاء',
            confirmText: ' طلب',
            cancelColor: Colors.red,
          );
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'اطلب قطعة الآن',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(width: 10),
            Icon(Icons.car_repair, color: Colors.white, size: 26),
          ],
        ),
      ),
    );
  }
}
