import 'package:car_parts_delivery_app/core/utils/app_colors.dart';
import 'package:car_parts_delivery_app/core/utils/app_dialog.dart';
import 'package:car_parts_delivery_app/core/utils/styles.dart';
import 'package:car_parts_delivery_app/featrues/home/presentation/view/widgets/custom_state_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class OrderStateCancelSection extends StatelessWidget {
  const OrderStateCancelSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        GestureDetector(
          onTap: () {},
          child: CustomStateButton(title: 'قيد المعاجة', bgColor: AppColors.secondaryColor),
        ),
        Spacer(),
        GestureDetector(
          onTap: () {
            showAppDialog(
              context: context,
              title: const Text(
                'هل انت متأكد من الغاء الطلب؟',
                style: Styles.textStyle26,
              ),
              onConfirm: () {
                GoRouter.of(context).pop();
              },
              confirmText: 'نعم',
              cancelText: 'لا',
              cancelColor: Colors.red,
              confirmColor: AppColors.secondaryColor,
            );
          },
          child: CustomStateButton(bgColor: Colors.red,title: 'الغاء الطلب',),
        ),
      ],
    );
  }
}
