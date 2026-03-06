import 'package:car_parts_delivery_app/featrues/home/presentation/view/widgets/admin/order_list_view.dart';
import 'package:flutter/material.dart';

class UnFoundOrder extends StatelessWidget {
  const UnFoundOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(' طلبات غير متوفرة'),
      ),
      body: const OrderListView(),
    );
  }
}