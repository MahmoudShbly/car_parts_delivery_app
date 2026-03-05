import 'package:car_parts_delivery_app/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';
import 'package:go_router/go_router.dart';

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({super.key,required this.title});
  final Widget title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        title,
        const Spacer(),
        IconButton(
          onPressed: () {
            GoRouter.of(context).push(AppRouter.kNotificationView);
          },
          icon: Icon(FontAwesomeIcons.solidBell, color: Colors.white, size: 24),
        ),
        IconButton(
          onPressed: () {
            GoRouter.of(context).push(AppRouter.kSettingView);
          },
          icon: Icon(FontAwesomeIcons.gears, color: Colors.white, size: 22),
        ),
      ],
    );
  }
}
