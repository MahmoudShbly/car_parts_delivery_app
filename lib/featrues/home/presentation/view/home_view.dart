import 'package:car_parts_delivery_app/featrues/home/presentation/view/widgets/available_parts_list.dart';
import 'package:car_parts_delivery_app/featrues/home/presentation/view/widgets/custom_home_app_bar.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeViewBody(),
    );
  }
}

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 48.0, left: 16.0, right: 16.0),
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            CustomHomeAppBar(),
            const SizedBox(height: 32),
             AvailablePartsList(),
          ],
        ),
      ),
    );
  }
}
