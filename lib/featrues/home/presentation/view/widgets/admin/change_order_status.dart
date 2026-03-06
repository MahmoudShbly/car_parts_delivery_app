import 'package:car_parts_delivery_app/core/utils/app_colors.dart';
import 'package:car_parts_delivery_app/core/utils/styles.dart';
import 'package:car_parts_delivery_app/featrues/home/presentation/manager/admin/cubit/admin_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChangeOrderStatus extends StatelessWidget {
  const ChangeOrderStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AdminCubit, AdminState>(
      builder: (context, state) {
        return SizedBox(
          height: 200,
          child: GridView.builder(
            itemCount: context.read<AdminCubit>().orderStates.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 2,
            ),
            itemBuilder: (context, index) {
              final state = context.read<AdminCubit>().orderStates[index];
              return GestureDetector(
                onTap: () {
                  context.read<AdminCubit>().onOrderStateSelected(index);
                },
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: context.read<AdminCubit>().selectedIndex == index
                        ? AppColors.primaryColor
                        : Colors.grey[300],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    state,
                    style: Styles.textStyle16.copyWith(color: Colors.white),
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
