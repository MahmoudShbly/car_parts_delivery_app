import 'package:car_parts_delivery_app/core/utils/styles.dart';
import 'package:car_parts_delivery_app/featrues/home/presentation/view/widgets/custom_my_order_card.dart';
import 'package:flutter/material.dart';

class LastOrderSection extends StatelessWidget {
  const LastOrderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('طلباتي', style: Styles.textStyle26),
        const SizedBox(height: 8),
        ListView.builder(
          itemCount: 5,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return CustomMyOrderCard();
          },
        ),
      ],
    );
  }
}
