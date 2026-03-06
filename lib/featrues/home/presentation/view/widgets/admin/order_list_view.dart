import 'package:car_parts_delivery_app/featrues/home/presentation/view/widgets/shared/custom_my_order_card.dart';
import 'package:flutter/material.dart';

class OrderListView extends StatelessWidget {
  const OrderListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 12,

      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        return const CustomMyOrderCard();
      },
    );
  }
}
