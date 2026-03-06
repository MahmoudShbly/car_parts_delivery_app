
import 'package:car_parts_delivery_app/core/utils/app_colors.dart';
import 'package:car_parts_delivery_app/core/utils/styles.dart';
import 'package:car_parts_delivery_app/core/utils/temp.dart';
import 'package:car_parts_delivery_app/core/widgets/custom_button_component.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

Future<T?> showAppDialog<T>({
  required BuildContext context,
  required Widget title,
   String? message,
  Widget? content,
  String confirmText = 'موافق',
  String? cancelText,
  Color confirmColor=AppColors.primaryColor,
  Color cancelColor=AppColors.primaryColor,
  BoxBorder?confirmBorder,
  BoxBorder?cancelBorder,

  required VoidCallback onConfirm,
}) {
  return showDialog<T>(
    
    context: context,
    barrierDismissible: false,
    builder: (dialogContext) {
      final size = MediaQuery.of(context).size;
      return Dialog(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color:Temp.isAdmin?Colors.white  : AppColors.primaryColor,
          ),
          
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                title,
                Text(
                  message ?? '',
                  textAlign: TextAlign.center,
                  style: Styles.textStyle18.copyWith(color: Temp.isAdmin ? AppColors.primaryColor : Colors.white),
                ),
                if (content != null) ...[
                  const SizedBox(height: 12),
                  content,
                ],
                const SizedBox(height: 20),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (cancelText != null)
                      CustomButtonComponent(
                        titleStyle: Styles.textStyle20.copyWith(color: Colors.white),
                        title: cancelText,
                        onTap: () => GoRouter.of(context).pop(),
                        width: size.width * 0.25,
                        borderRadius: 10,
                        color: cancelColor,
                        border: cancelBorder,
                      ),
                    if (cancelText != null) const SizedBox(width: 10),
            
                    CustomButtonComponent(
                      titleStyle: Styles.textStyle20.copyWith(color: Colors.white),
                      title: confirmText,
                      onTap: (){
                        onConfirm();
                      },
                      width: size.width * 0.25,
                      borderRadius: 10,
                      color: confirmColor,
                      border: confirmBorder,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}
