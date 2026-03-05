import 'package:car_parts_delivery_app/core/utils/styles.dart';
import 'package:car_parts_delivery_app/featrues/home/presentation/view/widgets/custom_home_app_bar.dart';
import 'package:flutter/material.dart';

class AdminHomeView extends StatelessWidget {
  const AdminHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white, body: AdminHomeViewBody());
  }
}

class AdminHomeViewBody extends StatelessWidget {
  const AdminHomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 48, bottom: 16, left: 16, right: 16),
      child: Column(
        children: <Widget>[
          CustomHomeAppBar(
            title: Text(
              'لوحة التحكم',
              style: Styles.textStyle26.copyWith(color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
