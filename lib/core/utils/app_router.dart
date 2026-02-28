import 'package:car_parts_delivery_app/main.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  


  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const MainView(),
      ),
    ],
  );

}