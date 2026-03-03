import 'package:car_parts_delivery_app/core/utils/app_colors.dart';
import 'package:car_parts_delivery_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomTextFormFieldComponent extends StatelessWidget {
  const CustomTextFormFieldComponent({
    super.key,
    required this.hint,
    this.onTap,
    this.isReadOnly=false,
    this.controller,
    this.isRequired = true,
    this.type=TextInputType.text
  });
  final String hint;
  final VoidCallback? onTap;
  final bool isReadOnly;
  final TextEditingController? controller;
  final bool isRequired;
  final TextInputType type;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: TextFormField(
        style: Styles.textStyle16,
        cursorColor: AppColors.secondaryColor,
        keyboardType:type ,
        validator: isRequired
            ? (value) {
                if (value == null || value.isEmpty) {
                  return 'هذا الحقل مطلوب';
                }
                return null;
              }
            : null,
        readOnly: isReadOnly,
        controller: controller,
        onTap: onTap,
        textDirection: TextDirection.rtl,
        decoration: InputDecoration(
          focusedBorder:OutlineInputBorder(borderSide: BorderSide(color: AppColors.secondaryColor)) ,
          hintText: hint,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
        ),
      ),
    );
  }
}
