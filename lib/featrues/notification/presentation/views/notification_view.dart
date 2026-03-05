import 'package:car_parts_delivery_app/core/utils/app_colors.dart';
import 'package:car_parts_delivery_app/core/utils/styles.dart';
import 'package:car_parts_delivery_app/core/utils/temp.dart';
import 'package:car_parts_delivery_app/featrues/notification/presentation/views/widgets/notification_view_body.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NotificationView extends StatelessWidget {
  const NotificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Temp.isAdmin ? Colors.white : AppColors.primaryColor,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            GoRouter.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios, color: Temp.isAdmin ? AppColors.primaryColor : Colors.white, size: 22),
        ),
        backgroundColor: Temp.isAdmin ? Colors.white : AppColors.primaryColor,
        title:  Text('الإشعارات', style: Styles.textStyle26.copyWith(color: Temp.isAdmin ? AppColors.primaryColor : Colors.white)),
      ),
      body: const NotificationViewBody(),
    );
  }
}
