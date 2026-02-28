import 'package:car_parts_delivery_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Text('مرحبا احمد', style: Styles.textStyle26),
        const Spacer(),
        Icon(FontAwesomeIcons.solidBell, color: Colors.white, size: 24),
      ],
    );
  }
}