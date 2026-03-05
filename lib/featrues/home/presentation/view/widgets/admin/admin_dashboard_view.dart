import 'package:car_parts_delivery_app/featrues/home/presentation/manager/admin/cubit/admin_cubit.dart';
import 'package:car_parts_delivery_app/featrues/home/presentation/view/widgets/admin/order_over_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AdminDashboardView extends StatelessWidget {
  const AdminDashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AdminCubit, AdminState>(
      builder: (context, state) {
        AdminCubit cubit = context.read<AdminCubit>();

        return SliverGrid(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              return OrderOverView(
                onTap: () => cubit.onDashboardItemTapped(index, context),
                title: cubit.dashboardItems[index],
              );
            },
            childCount: cubit.dashboardItems.length,
          ),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 16,
            crossAxisSpacing: 16,
          ),
        );
      },
    );
  }
}



//           SizedBox(height: 32),
//           AdminOrderOverView(),