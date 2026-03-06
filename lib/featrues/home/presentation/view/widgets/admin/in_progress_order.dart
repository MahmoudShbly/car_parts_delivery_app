import 'package:car_parts_delivery_app/featrues/home/presentation/view/widgets/admin/order_list_view.dart';
import 'package:flutter/material.dart';

class InProgressOrder extends StatelessWidget {
  const InProgressOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('طلبات قيد البحث'),
      ),
      body: const OrderListView(),
    );
  }
}