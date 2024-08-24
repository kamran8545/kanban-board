import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DecoratedContainer extends StatelessWidget {
  final Widget child;
  final EdgeInsets padding;
  final double radius;

  const DecoratedContainer({
    super.key,
    required this.child,
    this.padding = EdgeInsets.zero,
    this.radius = 15,
  });

  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);
    return Container(
      padding: padding,
      decoration: BoxDecoration(
        color: themeData.primaryColorLight,
        borderRadius: BorderRadius.all(
          Radius.circular(radius.r),
        ),
        boxShadow: [
          BoxShadow(
            color: themeData.shadowColor.withOpacity(0.5),
            blurRadius: 1.r,
            spreadRadius: 1.r,
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.all(
          Radius.circular(15.r),
        ),
        child: child,
      ),
    );
  }
}
