import 'package:car_parts_delivery_app/core/utils/app_colors.dart';
import 'package:car_parts_delivery_app/core/utils/app_router.dart';
import 'package:car_parts_delivery_app/core/utils/temp.dart';
import 'package:car_parts_delivery_app/featrues/home/presentation/manager/admin/cubit/admin_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AdminCubit>(
          create: (context) => AdminCubit(),
        ),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor:Temp.isAdmin ? Colors.white:AppColors.primaryColor,
          fontFamily: 'Cairo',
        ),
        routerConfig: AppRouter.router,
        locale: const Locale('ar'),
        supportedLocales: const [Locale('ar'), Locale('en')],
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
      ),
    );
  }
}

