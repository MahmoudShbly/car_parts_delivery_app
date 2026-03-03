import 'package:car_parts_delivery_app/core/utils/styles.dart';
import 'package:car_parts_delivery_app/featrues/setting/presentation/view/widgets/option_card.dart';
import 'package:flutter/material.dart';

class SettingViewBody extends StatelessWidget {
  const SettingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('الاسم الكامل',style: Styles.textStyle18,),
          SizedBox(height: 16),
          Text('البريد الإلكتروني',style: Styles.textStyle16,),
          SizedBox(height: 16),
          Text('رقم الهاتف',style: Styles.textStyle14,),
            SizedBox(height: 32),
            OptionCard(title: 'تغيير كلمة المرور', icon: Icons.lock_outline, onTap: () {}),
            SizedBox(height: 16),
            OptionCard(title: 'تعديل المعلومات', icon: Icons.edit, onTap: () {}),
            SizedBox(height: 16),
            OptionCard(title: 'تسجيل الخروج', icon: Icons.logout, onTap: () {}),
        ],
      ),
    );
  }
}
