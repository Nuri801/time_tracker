import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.color,
    required this.textColor,
    required this.buttonName,
    required this.onPressed,
    required this.buttonIcon
  }) : super(key: key);

  final Color color;
  final Color textColor;
  final String buttonName;
  final void Function() onPressed;
  final Icon buttonIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5.0),
      child: Material(
        elevation: 5.0,
        color: color,
        child: MaterialButton(
          onPressed: onPressed,
          minWidth: 200,
          height: 40.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buttonIcon,
              Text(
                buttonName,
                style: TextStyle(
                  color: textColor
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
