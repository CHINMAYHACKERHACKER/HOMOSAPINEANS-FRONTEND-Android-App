import 'package:flutter/material.dart';
import 'package:homo_sapiens/view/home_screen/home_screen.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    super.key,
    this.height,
    this.width,
    this.backgroundColor,
    this.shape,
    this.child,
    this.side,
    this.naving,
  });

  final double? height;
  final double? width;
  final Color? backgroundColor;
  final OutlinedBorder? shape;
  final Widget? child;
  final BorderSide? side;
  final dynamic naving;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => HomeScreen()));
        },
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
