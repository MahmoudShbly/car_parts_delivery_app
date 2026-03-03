import 'package:car_parts_delivery_app/core/utils/styles.dart';
import 'package:car_parts_delivery_app/featrues/home/presentation/view/widgets/custom_my_order_card.dart';
import 'package:car_parts_delivery_app/featrues/home/presentation/view/widgets/custom_tab_bar.dart';
import 'package:flutter/material.dart';

class MyOrderSection extends StatelessWidget {
  const MyOrderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.max, // لجعل العمود يأخذ أقل مساحة ممكنة
      children: <Widget>[
        Text('طلباتي', style: Styles.textStyle26),
        const SizedBox(height: 24),
        // نستخدم SizedBox بارتفاع محدد بدلاً من Expanded لتجنب أخطاء التخطيط
        const SizedBox(
          height: 400, 
          child: CustomTabBar(),
        )
      ],
    );
  }
}

class MyOrderListView extends StatelessWidget {
  const MyOrderListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 5, 
        // نغير التمرير ليكون متاحاً داخل الـ TabBarView
        physics: const BouncingScrollPhysics(), 
        itemBuilder: (context, index) {
          return const CustomMyOrderCard(); 
        },
      ),
    );
  }
}