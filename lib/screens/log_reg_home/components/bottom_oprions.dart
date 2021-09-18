import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:social_app_ui_kit/constants.dart';

class BottomOptions extends StatelessWidget {
  final VoidCallback? onPressFacebook;
  final VoidCallback? onPressTwitter;
  final VoidCallback? onPressGooglePlus;

  const BottomOptions({
    Key? key,
    this.onPressFacebook,
    this.onPressGooglePlus,
    this.onPressTwitter,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.9,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'or try with',
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: AppConsts.defPadding * 2),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: onPressFacebook,
                child: SvgPicture.asset(
                  'assets/pictures/svg/facebook.svg',
                  color: AppConsts.appWhiteColor,
                  height: 26,
                ),
              ),
              const SizedBox(width: AppConsts.defPadding * 3),
              GestureDetector(
                onTap: onPressTwitter,
                child: SvgPicture.asset(
                  'assets/pictures/svg/twitter.svg',
                  color: AppConsts.appWhiteColor,
                  height: 26,
                ),
              ),
              const SizedBox(width: AppConsts.defPadding * 3),
              GestureDetector(
                onTap: onPressGooglePlus,
                child: SvgPicture.asset(
                  'assets/pictures/svg/googlePlus.svg',
                  color: AppConsts.appWhiteColor,
                  height: 26,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
