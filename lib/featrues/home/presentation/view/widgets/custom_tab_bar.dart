import 'package:car_parts_delivery_app/core/utils/app_colors.dart';
import 'package:car_parts_delivery_app/featrues/home/presentation/view/widgets/my_order_section.dart';
import 'package:flutter/material.dart';

class CustomTabBar extends StatefulWidget {
  const CustomTabBar({super.key});

  @override
  State<CustomTabBar> createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar>
    with SingleTickerProviderStateMixin {
  late TabController _controller;
  @override
  void initState() {
    _controller = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 50,
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(12),
          ),

          child: TabBar(
            indicator: BoxDecoration(
              color: AppColors.secondaryColor,
              borderRadius: BorderRadius.circular(12),
            ),
            labelColor: Colors.white,
            unselectedLabelColor: AppColors.primaryColor,
            dividerColor: Colors.transparent,
            indicatorSize: TabBarIndicatorSize.tab,
            labelStyle: TextStyle(fontWeight: FontWeight.bold),
            tabs: [
              SizedBox(
                width: double.infinity,
                child: Text(
                  'الحالية',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: Text(
                  'السابقة',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ],
            controller: _controller,
          ),
        ),
        SizedBox(height: 22),
        Expanded(
          child: TabBarView(
            controller: _controller,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: MyOrderListView(),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: MyOrderListView(),
              ),
              
            ],
          ),
        ),
      ],
    );
  }
}

