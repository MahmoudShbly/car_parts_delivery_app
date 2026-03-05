import 'package:car_parts_delivery_app/core/utils/styles.dart';
import 'package:car_parts_delivery_app/featrues/home/presentation/view/widgets/custom_home_app_bar.dart';
import 'package:car_parts_delivery_app/featrues/home/presentation/view/widgets/home_banner_slider.dart';
import 'package:car_parts_delivery_app/featrues/home/presentation/view/widgets/my_order_section.dart';
import 'package:car_parts_delivery_app/featrues/home/presentation/view/widgets/order_button.dart';
import 'package:flutter/material.dart';

class CustomerHomeViewBody extends StatelessWidget {
  const CustomerHomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      headerSliverBuilder: (context, innerBoxIsScrolled) {
        return [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(
                top: 48.0,
                left: 16.0,
                right: 16.0,
              ),
              child: Column(
                children: <Widget>[
                  CustomHomeAppBar(title: Text('مرحبا احمد', style: Styles.textStyle26),),
                  const SizedBox(height: 32),
                  HomeBannerSlider(),
                  const SizedBox(height: 32),
                  OrderButton(),
                  const SizedBox(height: 16),
                  Text(
                    'اطلب أي قطعة لأي سيارة بسهولة و سنوفرها لك في أسرع وقت إن شاء الله',
                    style: Styles.textStyle18,
                  ),
                ],
              ),
            ),
          ),
        ];
      },
      body: Padding(
        padding: const EdgeInsets.only(
          left: 16.0,
          top: 32,
          right: 16.0,
          bottom: 16.0,
        ),
        child: MyOrderSection(),
      ),
    );
  }
}
