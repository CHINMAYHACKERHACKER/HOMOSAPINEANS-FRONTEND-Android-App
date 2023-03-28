import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    super.key,
    this.height,
    this.width,
    this.backgroundColor,
    this.shape,
    this.child,
    this.side,
  });

  final double? height;
  final double? width;
  final Color? backgroundColor;
  final OutlinedBorder? shape;
  final Widget? child;
  final BorderSide? side;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: shape,
          side: side,
        ),
        child: child,
      ),
    );
  }
}
