import 'package:flutter/material.dart';

class CustomRaisedButton extends StatelessWidget {
  CustomRaisedButton(
      {required this.child,
      required this.color,
      this.borderRadius = 4.0,
      this.onPressed,
      this.buttonHeight = 45,
      });

  final Widget child;
  final Color color;
  final double borderRadius;
  final VoidCallback? onPressed;
  final double buttonHeight;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: SizedBox(
        height: buttonHeight,
        child: ElevatedButton(
          onPressed: onPressed,
          child: child,
          style: ElevatedButton.styleFrom(
              primary: color,
              onSurface: color,
              shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.all(Radius.circular(borderRadius)))),
        ),
      ),
    );
  }
}
