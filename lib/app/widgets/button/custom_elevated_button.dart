import 'package:cars_and_all/app/utils/size_utils.dart';
import 'package:flutter/material.dart';

import '../../../shared/theme/custom_text_style.dart';
import 'base_button.dart';

class CustomElevatedButton extends BaseButton {
  final BoxDecoration? decoration;
  final Widget? leftIcon;
  final Widget? rightIcon;

  CustomElevatedButton({
    Key? key,
    this.decoration,
    this.leftIcon,
    this.rightIcon,
    EdgeInsets? margin,
    VoidCallback? onPressed,
    Future<void> Function()? onPressedAsync,
    ButtonStyle? buttonStyle,
    Alignment? alignment,
    TextStyle? buttonTextStyle,
    bool? isDisabled,
    double? height,
    double? width,
    required String text,
  }) : super(
          text: text,
          onPressed: onPressed,
          onPressedAsync: onPressedAsync,
          buttonStyle: buttonStyle,
          isDisabled: isDisabled??false,
          buttonTextStyle: buttonTextStyle,
          height: height,
          width: width,
          alignment: alignment,
          margin: margin,
        );

  @override
  State<BaseButton> createState() {
    return _CustomElevatedButtonState();
  }
}

class _CustomElevatedButtonState extends State<CustomElevatedButton> {
  @override
  Widget build(BuildContext context) {
    return widget.alignment != null
        ? Align(
            alignment: widget.alignment ?? Alignment.center,
            child: buildElevatedButtonWidget,
          )
        : buildElevatedButtonWidget;
  }

  bool _isLoading = false; // Loading state

  Future<void> _handleOnPressed() async {
    if (widget.isDisabled ?? false) return;
    if (widget.onPressedAsync != null) {
      setState(() {
        _isLoading = true;
      });
      await widget.onPressedAsync!();
      setState(() {
        _isLoading = false;
      });
    } else {
      widget.onPressed?.call();
    }
  }

  Widget get buildElevatedButtonWidget => Container(
        height: widget.height ?? 52.h,
        width: widget.width ?? double.maxFinite,
        margin: widget.margin,
        decoration: widget.decoration,
        child: ElevatedButton(
          style: widget.buttonStyle,
          onPressed: _isLoading || widget.isDisabled ? null : _handleOnPressed,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              widget.leftIcon ?? const SizedBox.shrink(),
              _isLoading // Display loader instead of text when loading
                  ? const SizedBox(
                height: 20,
                width: 20,
                child: CircularProgressIndicator(
                  color: Colors.white,
                  strokeWidth: 2,
                ),
              )
                  : Text(
                widget.text,
                style: widget.buttonTextStyle ??
                    CustomTextStyle.titleLargeRoboto,
              ),
              widget.rightIcon ?? const SizedBox.shrink(),
            ],
          ),
        ),
      );
}
