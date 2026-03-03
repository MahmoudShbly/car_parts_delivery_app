import 'package:car_parts_delivery_app/core/utils/styles.dart';
import 'package:car_parts_delivery_app/featrues/home/presentation/view/widgets/custom_my_order_card.dart';
import 'package:flutter/material.dart';

class AvailablePartsList extends StatelessWidget {
  const AvailablePartsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('قطع متوفرة في السوق', style: Styles.textStyle24),
        const SizedBox(height: 16),
        ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: 5,
          itemBuilder: (context, index) {
            return const CustomMyOrderCard();
          },
        ),
        SizedBox( height: 16)
        
      ],
    );
  }
}
