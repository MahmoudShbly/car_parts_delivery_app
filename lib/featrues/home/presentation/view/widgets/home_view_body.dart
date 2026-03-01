import 'package:car_parts_delivery_app/core/utils/styles.dart';
import 'package:car_parts_delivery_app/featrues/home/presentation/view/widgets/custom_home_app_bar.dart';
import 'package:car_parts_delivery_app/featrues/home/presentation/view/widgets/home_banner_slider.dart';
import 'package:car_parts_delivery_app/featrues/home/presentation/view/widgets/order_button.dart';
import 'package:flutter/material.dart';

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
            HomeBannerSlider(),
            const SizedBox(height: 32),
            OrderButton(),
            const SizedBox(height: 16),
            Text(
              'اطلب أي قطعة لأي سيارة بسهولة و سنوفرها لك في أسرع وقت ان شاء الله',
              style: Styles.textStyle18,
            ),
          ],
        ),
      ),
    );
  }
}


