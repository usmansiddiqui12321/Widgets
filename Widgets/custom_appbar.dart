import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Color backgroundColor;
  final List<Widget>? actions;
  final Color textColor;
  final Color iconColor;
  final double? fontsize;
  @override
  final Size preferredSize;
  const CustomAppBar({
    super.key,
    required this.title,
    required this.backgroundColor,
    required this.textColor,
    required this.iconColor,
    this.fontsize, this.actions,
  }) : preferredSize = const Size.fromHeight(60.0);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(color: iconColor),
      title: Text(
        title,
        style: TextStyle(color: textColor, fontSize: fontsize),
      ),
      actions: actions,
      centerTitle: true,
      backgroundColor: backgroundColor,
    );
  }
}
