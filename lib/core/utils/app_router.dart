import 'package:car_parts_delivery_app/core/utils/temp.dart';
import 'package:car_parts_delivery_app/featrues/home/presentation/view/admin_home_view.dart';
import 'package:car_parts_delivery_app/featrues/home/presentation/view/customer_home_view.dart';
import 'package:car_parts_delivery_app/featrues/notification/presentation/views/notification_view.dart';
import 'package:car_parts_delivery_app/featrues/setting/presentation/view/setting_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const String kNotificationView = '/NotificationView';
  static const String kSettingView = '/SettingView';
  static const String kAdminHomeView = '/AdminHomeView';
  static const String kCustomerHomeView = '/CustomerHomeView';

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
    ],
  );
}
