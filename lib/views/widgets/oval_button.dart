import 'package:flutter/material.dart';

class OvalButton extends StatelessWidget {
  const OvalButton({
    super.key,
    required this.onTap,
    required this.child,
    this.bgColor,
    this.splashColor,
    this.width,
    this.height,
  });

  final Function() onTap;
  final Widget child;
  final Color? bgColor;
  final Color? splashColor;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Material(
        color: bgColor ?? Colors.black12,
        child: InkWell(
          splashColor: splashColor ?? Colors.black26,
          child: SizedBox(
            width: width ?? 48,
            height: height ?? 48,
            child: Center(child: child),
          ),
          onTap: () {
            onTap.call();
          },
        ),
      ),
    );
  }
}