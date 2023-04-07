import 'package:flutter/material.dart';

class ContainerCategory extends StatelessWidget {
  const ContainerCategory(
      {super.key,
      this.height,
      this.width,
      this.borderRadius,
      this.color,
      this.child});
  final double? height;
  final double? width;
  final BorderRadiusGeometry? borderRadius;
  final Color? color;
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: borderRadius,
        color: color,
      ),
      child: child,
    );
  }
}
