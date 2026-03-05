import 'package:bloc/bloc.dart';
import 'package:car_parts_delivery_app/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

part 'admin_state.dart';

class AdminCubit extends Cubit<AdminState> {
  AdminCubit() : super(AdminInitial());

  final List<String> dashboardItems = [
    'طلبات جديدة',
    'طلبات قيد التنفيذ',
    'طلبات منتهية',
    'طلبات لم يتم العثور عليها',
    'طلبات ملغاة',
  ];

  void onDashboardItemTapped(int index, BuildContext context) {
    if (index == 0) {
      GoRouter.of(context).push(AppRouter.kAdminNewOrderHomeView);
    } else if (index == 1) {
      GoRouter.of(context).push(AppRouter.kAdminInProgressOrderHomeView);
    } else if (index == 2) {
      GoRouter.of(context).push(AppRouter.kAdminFinishedOrderHomeView);
    } else if (index == 3) {
      GoRouter.of(context).push(AppRouter.kAdminUnFoundOrderHomeView);
    } else if (index == 4) {
      GoRouter.of(context).push(AppRouter.kAdminCanceledOrderHomeView);
    }
  }
}
