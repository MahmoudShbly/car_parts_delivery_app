import 'package:car_parts_delivery_app/featrues/home/presentation/view/home_view.dart';
import 'package:car_parts_delivery_app/featrues/notification/presentation/views/notification_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
   static const String kNotificationView = '/NotificationView';


  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kNotificationView,
        builder: (context, state) => const NotificationView(),
      ),
    ],
  );

}