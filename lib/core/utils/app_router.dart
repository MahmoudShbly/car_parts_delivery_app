import 'package:car_parts_delivery_app/core/utils/temp.dart';
import 'package:car_parts_delivery_app/featrues/home/presentation/view/admin_home_view.dart';
import 'package:car_parts_delivery_app/featrues/home/presentation/view/customer_home_view.dart';
import 'package:car_parts_delivery_app/featrues/home/presentation/view/widgets/admin/canceled_order.dart';
import 'package:car_parts_delivery_app/featrues/home/presentation/view/widgets/admin/finished_order.dart';
import 'package:car_parts_delivery_app/featrues/home/presentation/view/widgets/admin/in_progress_order.dart';
import 'package:car_parts_delivery_app/featrues/home/presentation/view/widgets/admin/new_order.dart';
import 'package:car_parts_delivery_app/featrues/home/presentation/view/widgets/admin/un_found_order.dart';
import 'package:car_parts_delivery_app/featrues/notification/presentation/views/notification_view.dart';
import 'package:car_parts_delivery_app/featrues/setting/presentation/view/setting_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const String kNotificationView = '/NotificationView';
  static const String kSettingView = '/SettingView';
  static const String kAdminHomeView = '/AdminHomeView';
  static const String kCustomerHomeView = '/CustomerHomeView';
  static const String kAdminNewOrderHomeView = '/AdminNewOrderHomeView';
  static const String kAdminInProgressOrderHomeView = '/AdminInProgressOrderHomeView';
  static const String kAdminFinishedOrderHomeView = '/AdminFinishedOrderHomeView';
  static const String kAdminUnFoundOrderHomeView = '/AdminUnFoundOrderHomeView';
  static const String kAdminCanceledOrderHomeView = '/AdminCanceledOrderHomeView';

  static final router = GoRouter(
    initialLocation: Temp.isAdmin ? kAdminHomeView : kCustomerHomeView,
    routes: [
     GoRoute(
        path: kCustomerHomeView,
        pageBuilder: (context, state) {
          return CustomTransitionPage(
            key: state.pageKey,
            child: const CustomerHomeView(),
            transitionDuration: Duration(milliseconds: 300),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
                  return FadeTransition(opacity: animation, child: child);
                },
          );
        },
      ),
     GoRoute(
        path: '/AdminHomeView',
        pageBuilder: (context, state) {
          return CustomTransitionPage(
            key: state.pageKey,
            child: const AdminHomeView(),
            transitionDuration: Duration(milliseconds: 300),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
                  return FadeTransition(opacity: animation, child: child);
                },
          );
        },
      ),
      GoRoute(
        path: kSettingView,
        pageBuilder: (context, state) {
          return CustomTransitionPage(
            key: state.pageKey,
            child: const SettingView(),
            transitionDuration: Duration(milliseconds: 300),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
                  return FadeTransition(opacity: animation, child: child);
                },
          );
        },
      ),
      GoRoute(
        path: kNotificationView,
        pageBuilder: (context, state) {
          return CustomTransitionPage(
            key: state.pageKey,
            child: const NotificationView(),
            transitionDuration: Duration(milliseconds: 300),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
                  return FadeTransition(opacity: animation, child: child);
                },
          );
        },
      ),
      GoRoute(
        path: kAdminNewOrderHomeView,
        pageBuilder: (context, state) {
          return CustomTransitionPage(
            key: state.pageKey,
            child: const NewOrder(),
            transitionDuration: Duration(milliseconds: 300),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
                  return FadeTransition(opacity: animation, child: child);
                },
          );
        },
      ),
      GoRoute(
        path: kAdminInProgressOrderHomeView,
        pageBuilder: (context, state) {
          return CustomTransitionPage(
            key: state.pageKey,
            child: const InProgressOrder(),
            transitionDuration: Duration(milliseconds: 300),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
                  return FadeTransition(opacity: animation, child: child);
                },
          );
        },
      ),
      GoRoute(
        path: kAdminFinishedOrderHomeView,
        pageBuilder: (context, state) {
          return CustomTransitionPage(
            key: state.pageKey,
            child: const FinishedOrder(),
            transitionDuration: Duration(milliseconds: 300),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
                  return FadeTransition(opacity: animation, child: child);
                },
          );
        },
      ),
      GoRoute(
        path: kAdminUnFoundOrderHomeView,
        pageBuilder: (context, state) {
          return CustomTransitionPage(
            key: state.pageKey,
            child: const UnFoundOrder(),
            transitionDuration: Duration(milliseconds: 300),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
                  return FadeTransition(opacity: animation, child: child);
                },
          );
        },
      ),
      GoRoute(
        path: kAdminCanceledOrderHomeView,
        pageBuilder: (context, state) {
          return CustomTransitionPage(
            key: state.pageKey,
            child: const CanceledOrder(),
            transitionDuration: Duration(milliseconds: 300),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
                  return FadeTransition(opacity: animation, child: child);
                },
          );
        },
      ),
    ],
  );
}
