import 'package:car_parts_delivery_app/core/utils/styles.dart';
import 'package:car_parts_delivery_app/featrues/home/presentation/view/widgets/customer/custom_tab_bar.dart';
import 'package:flutter/material.dart';

class MyOrderSection extends StatelessWidget {
  const MyOrderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Text('طلباتي', style: Styles.textStyle26),
        const SizedBox(height: 24),

        Expanded(child: CustomTabBar()),
      ],
    );
  }
}
