import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DecoratedContainer extends StatelessWidget {
  final Widget child;

  const DecoratedContainer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);
    return Container(
      decoration: BoxDecoration(
        color: themeData.primaryColorLight,
        borderRadius: BorderRadius.all(
          Radius.circular(15.r),
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
