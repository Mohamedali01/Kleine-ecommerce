import 'package:flutter/material.dart';

import 'custom_text.dart';

class CustomButton extends StatelessWidget {
  final int backgroundColor;
  final Color textColor;
  final Color? progressIndicatorColor;
  final String text;
  final void Function()? onPressed;
  final double? height;
  final String? image;
  final double fontSize;
  final bool isLoading;
  final double? iconWidth;
  final double? iconHeight;
  final Widget? icon;

  const CustomButton(
      {Key? key,
      this.backgroundColor = 0xff000000,
      this.text = '',
      this.textColor = Colors.white,
      this.onPressed,
      this.height = 50,
      this.image,
      this.fontSize = 20,
      this.isLoading = false,
      this.iconHeight,
      this.iconWidth,
      this.icon,
      this.progressIndicatorColor = Colors.white})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      height: height,
      child: TextButton(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(
            Color(backgroundColor),
          ),
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(6))),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (image != null || icon != null)
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (icon != null && isLoading == false) icon!,
                  if (image != null&&isLoading == false)
                    Image.asset(
                      image!,
                      width: iconWidth,
                      height: iconHeight,
                    ),
                  const SizedBox(
                    width: 20,
                  )
                ],
              ),
            if (!isLoading)
              CustomText(
                text,
                color: textColor,
                fontSize: fontSize,
              ),
            if (isLoading)
              CircularProgressIndicator(
                color: progressIndicatorColor,
              )
          ],
        ),
      ),
    );
  }
}
