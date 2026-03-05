import 'package:car_parts_delivery_app/core/utils/app_colors.dart';
import 'package:car_parts_delivery_app/core/utils/app_router.dart';
import 'package:car_parts_delivery_app/featrues/home/presentation/view/customer_home_view.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.primaryColor,
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
    );
  }
}

class MainView extends StatelessWidget {
  const MainView({super.key});
  static PersistentTabController controller = PersistentTabController(
    initialIndex: 0,
  );
  @override
  Widget build(BuildContext context) {
    List<Widget> screens = [
      CustomerHomeView(),
      Container(color: Colors.green),
      Container(color: Colors.purple),
    ];

    return Scaffold(
      body: PersistentTabView(
        navBarHeight: 70,
        margin: EdgeInsets.only(bottom: 12),
        padding: NavBarPadding.all(1),

        context,
        controller: controller,
        screens: screens,
        items: navBarItems,
        confineInSafeArea: true,
        backgroundColor: AppColors.primaryColor,
        handleAndroidBackButtonPress: true,
        resizeToAvoidBottomInset: true,
        stateManagement: true,
        hideNavigationBarWhenKeyboardShows: true,
        decoration: NavBarDecoration(
          borderRadius: BorderRadius.circular(10.0),
          colorBehindNavBar: Colors.white,
        ),
        popAllScreensOnTapOfSelectedTab: true,
        popActionScreens: PopActionScreensType.all,
        itemAnimationProperties: ItemAnimationProperties(
          duration: Duration(milliseconds: 200),
          curve: Curves.ease,
        ),
        screenTransitionAnimation: ScreenTransitionAnimation(
          animateTabTransition: true,
          curve: Curves.ease,
          duration: Duration(milliseconds: 200),
        ),
        navBarStyle: NavBarStyle.style8,
      ),
    );
  }
}

List<PersistentBottomNavBarItem> get navBarItems => [
  PersistentBottomNavBarItem(
    icon: const Icon(FontAwesomeIcons.solidHouse),
    title: "الرئيسية",
    activeColorPrimary: AppColors.secondaryColor,
    inactiveColorPrimary: Colors.grey,
  ),


  PersistentBottomNavBarItem(
    icon: const Icon(FontAwesomeIcons.solidBell),
    title: "الاشعارات",
    activeColorPrimary: AppColors.secondaryColor,
    inactiveColorPrimary: Colors.grey,
  ),
  PersistentBottomNavBarItem(
    icon: const Icon(FontAwesomeIcons.solidCircleUser),
    title: "الحساب",
    activeColorPrimary: AppColors.secondaryColor,
    inactiveColorPrimary: Colors.grey,
  ),
];
