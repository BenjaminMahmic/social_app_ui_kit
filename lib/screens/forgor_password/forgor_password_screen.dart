import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:social_app_ui_kit/components/custom_button.dart';
import 'package:social_app_ui_kit/components/text_field.dart';
import 'package:social_app_ui_kit/constants.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: TextButton(
          child: const Text(
            'X',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: size.height,
          width: size.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/pictures/backgrounds/background2.jpg'),
              colorFilter: ColorFilter.srgbToLinearGamma(),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppConsts.defPadding * 2,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Forgot password',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                    fontFamily: 'QuattrocentoSans',
                    fontSize: AppConsts.largeTitleSize,
                  ),
                ),
                const SizedBox(height: AppConsts.defPadding * 2),
                const Text(
                  'Please enter your email address. You will recive a link to create a new password via email.',
                  style: TextStyle(color: Colors.white),
                ),
                const SizedBox(height: AppConsts.defPadding * 6),
                const CustomTextField(
                  hintText: 'Your email',
                ),
                const SizedBox(height: AppConsts.defPadding * 2),
                CustomButton(
                  title: 'SEND',
                  titleColor: Colors.white,
                  onPress: () {},
                  doGradient: true,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
