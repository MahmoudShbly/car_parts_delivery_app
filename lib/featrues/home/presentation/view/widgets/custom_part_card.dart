import 'package:car_parts_delivery_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomPartCard extends StatelessWidget {
  const CustomPartCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      child: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: <Widget>[
              Container(
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Icon(Icons.image, size: 40, color: Colors.grey[700]),
              ),
              const SizedBox(width: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text('اسم القطعة', style: Styles.textStyle20),
                  const SizedBox(height: 8),
                  Text('وصف مختصر للقطعة', style: Styles.textStyle16),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
 
