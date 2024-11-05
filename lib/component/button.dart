import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Button extends StatelessWidget {
  const Button({
    super.key,
    required this.onTap,
    required this.color,
  });

  final Color color;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 100.w,
        height: 50.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: color,
        ),
        child: Center(
          child: Text(
            "Button",
            style: TextStyle(
              fontSize: 100.sp,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
