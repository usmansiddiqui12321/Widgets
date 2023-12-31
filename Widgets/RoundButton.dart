import 'package:flutter/material.dart';

class CustomRoundButton extends StatelessWidget {
  const CustomRoundButton(
      {super.key,
      this.textColor,
      this.buttonColor,
      required this.onpress,
      required this.title,
      this.height = 44,
      this.width = 160,
      this.loading = false});
  final Color? textColor, buttonColor;
  final VoidCallback? onpress;
  final String? title;
  final double? height, width;
  final bool loading;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onpress,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: buttonColor),
        child: Center(
          child: loading
              ? const Center(
                  child: CircularProgressIndicator(
                    color: Colors.white,
                  ),
                )
              : Text(title!,
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(color: textColor)),
        ),
      ),
    );
  }
}
