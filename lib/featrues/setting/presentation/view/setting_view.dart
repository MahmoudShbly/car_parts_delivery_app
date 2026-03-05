import 'package:car_parts_delivery_app/core/utils/app_colors.dart';
import 'package:car_parts_delivery_app/core/utils/styles.dart';
import 'package:car_parts_delivery_app/core/utils/temp.dart';
import 'package:car_parts_delivery_app/featrues/setting/presentation/view/widgets/setting_view_body.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SettingView extends StatelessWidget {
  const SettingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Temp.isAdmin ? Colors.white:AppColors.primaryColor,
        leading: 
          IconButton(
            onPressed: () {GoRouter.of(context).pop();},
            icon: Icon(Icons.arrow_back_ios, color:  Temp.isAdmin ? AppColors.primaryColor : Colors.white ,size: 22,),
          ),
     
        title:  Text('الاعدادات',style: Styles.textStyle26.copyWith(color:  Temp.isAdmin ? AppColors.primaryColor : Colors.white),),
      ),
      body: SettingViewBody(),
    );
  }
}
