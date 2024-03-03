import 'package:flutter/material.dart';
import 'package:homo_sapiens/widgets/text_widget.dart';

class ButtonPagesWidget extends StatelessWidget {
  const ButtonPagesWidget({
    super.key,
    this.onPressed,
    required this.name,
  });
  final void Function()? onPressed;
  final String name;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: TextWidget(
        name: name,
        fontSize: 9,
      ),
    );
  }
}
