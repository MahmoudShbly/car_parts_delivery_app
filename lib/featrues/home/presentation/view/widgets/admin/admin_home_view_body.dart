import 'package:car_parts_delivery_app/core/utils/styles.dart';
import 'package:car_parts_delivery_app/featrues/home/presentation/view/widgets/admin/admin_dashboard_view.dart';
import 'package:car_parts_delivery_app/featrues/home/presentation/view/widgets/shared/custom_home_app_bar.dart';
import 'package:flutter/material.dart';

class AdminHomeViewBody extends StatelessWidget {
  const AdminHomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 48, bottom: 16, left: 16, right: 16),

      child:CustomScrollView(
  slivers: [
    SliverAppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      pinned: true,
      flexibleSpace: CustomHomeAppBar(
        title: Text(
          'لوحة التحكم',
          style: Styles.textStyle26.copyWith(color: Colors.black),
        ),
      ),
    ),

    const SliverToBoxAdapter(
      child: SizedBox(height: 24),
    ),

    const AdminDashboardView(),
  ],
)
      )
    ;
  }
}
