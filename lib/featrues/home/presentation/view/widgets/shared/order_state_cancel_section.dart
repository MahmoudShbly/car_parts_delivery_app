import 'package:car_parts_delivery_app/core/utils/app_colors.dart';
import 'package:car_parts_delivery_app/core/utils/app_dialog.dart';
import 'package:car_parts_delivery_app/core/utils/styles.dart';
import 'package:car_parts_delivery_app/core/utils/temp.dart';
import 'package:car_parts_delivery_app/featrues/home/presentation/view/widgets/admin/change_order_status.dart';
import 'package:car_parts_delivery_app/featrues/home/presentation/view/widgets/shared/custom_state_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class OrderStateCancelSection extends StatelessWidget {
  const OrderStateCancelSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        GestureDetector(
          onTap: Temp.isAdmin
              ? () {
                  showAppDialog(
                    context: context,
                    title: Text(
                      'تغيير حالة الطلب',
                      style: Styles.textStyle20.copyWith(
                        color: Temp.isAdmin
                            ? AppColors.primaryColor
                            : Colors.white,
                      ),
                    ),
                    onConfirm: () {
                      GoRouter.of(context).pop();
                    },
                    cancelText: 'الغاء',
                    confirmText: 'تأكيد',

                    confirmColor: Colors.green,
                    cancelColor: Colors.red,
                    content: ChangeOrderStatus(),
                  );
                }
              : () {},
          child: CustomStateButton(
            title: 'قيد المعاجة',
            bgColor: AppColors.secondaryColor,
          ),
        ),
        Spacer(),
        if (!Temp.isAdmin)
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
            child: CustomStateButton(bgColor: Colors.red, title: 'الغاء الطلب'),
          ),
      ],
    );
  }
}
