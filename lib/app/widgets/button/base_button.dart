import 'package:flutter/material.dart';

class BaseButton extends StatefulWidget {
  final String text;
  final VoidCallback? onPressed;
  final Future<void> Function()? onPressedAsync;
  final ButtonStyle? buttonStyle;
  final TextStyle? buttonTextStyle;
  final bool isDisabled;
  final double? height;
  final double? width;
  final EdgeInsets? margin;
  final Alignment? alignment;

  const BaseButton({
    Key? key,
    required this.text,
    this.onPressed,
    this.onPressedAsync,
    this.buttonStyle,
    this.buttonTextStyle,
    this.height,
    this.width,
    this.margin,
    this.alignment,
    this.isDisabled=false,

  }) : super(key: key);

  @override
  State<BaseButton> createState() => _BaseButtonState();
}

class _BaseButtonState extends State<BaseButton> {
  @override
  Widget build(BuildContext context) {
    return const SizedBox.shrink();
  }
}
