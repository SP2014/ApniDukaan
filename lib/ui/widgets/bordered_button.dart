import 'package:flutter/material.dart';

class BorderedButton extends StatelessWidget {
  final Widget child;
  final double cornerRadius;
  final Color color;
  final Function onPressed;

  const BorderedButton(
      {Key key,
      @required this.child,
      this.cornerRadius = 30.0,
      this.color,
      this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          backgroundColor: color ?? Colors.transparent,
          primary: color != null ? Colors.white : Colors.blue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(cornerRadius),
          ),
        ),
        child: child);
  }
}
