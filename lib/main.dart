import 'package:car_parts_delivery_app/featrues/home/presentation/view/home_view.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';

import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';

 void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      debugShowCheckedModeBanner: false,
      home: const MainView(),
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
      HomeView(),
      Container(color: Colors.green,),
      Container(color: Colors.yellow,),
      Container(color: Colors.purple,),
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
        backgroundColor: Colors.white,
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
        activeColorPrimary: Colors.blue,
        inactiveColorPrimary: Colors.grey,
      ),
     
      PersistentBottomNavBarItem(
        icon: const Icon(FontAwesomeIcons.gears),                  
        title: "طلباتي",
        activeColorPrimary: Colors.blue,
        inactiveColorPrimary: Colors.grey,
        

      ),
      PersistentBottomNavBarItem(
        icon: const Icon(FontAwesomeIcons.solidBell),
        title: "الاشعارات",
        activeColorPrimary: Colors.blue,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(FontAwesomeIcons.solidCircleUser),
        title: "الحساب",
        activeColorPrimary: Colors.blue,
        inactiveColorPrimary: Colors.grey,
      ),
    ];


