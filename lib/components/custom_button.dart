import 'package:flutter/material.dart';
import 'package:social_app_ui_kit/constants.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final Color titleColor;
  final bool doGradient;
  final VoidCallback? onPress;

  const CustomButton({
    Key? key,
    required this.title,
    required this.titleColor,
    this.doGradient = false,
    required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        height: 50,
        width: MediaQuery.of(context).size.width * 0.9,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              color: Colors.white30,
              blurRadius: 5,
              spreadRadius: 0.1,
            )
          ],
          gradient: doGradient
              ? const LinearGradient(
                  colors: [
                    AppConsts.primaryColor,
                    AppConsts.secondaryColor,
                  ],
                  stops: [0, 1],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                )
              : null,
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              color: titleColor,
              fontFamily: 'QuattrocentoSans',
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
