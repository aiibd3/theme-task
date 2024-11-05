import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Box extends StatelessWidget {
  const Box({super.key, required this.color, required this.child});

  final Color color;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color:color,
      ),
      width: 200.w,
      height: 85.h,
      padding:  EdgeInsets.all(10.h),
      child: child,
    );
  }
}
