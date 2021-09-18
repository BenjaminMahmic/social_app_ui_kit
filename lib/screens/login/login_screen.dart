import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:social_app_ui_kit/components/custom_button.dart';
import 'package:social_app_ui_kit/components/text_field.dart';
import 'package:social_app_ui_kit/constants.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          height: size.height,
          width: size.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/pictures/backgrounds/background2.jpg',
              ),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.srgbToLinearGamma(),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: AppConsts.defPadding * 2),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 40),
                const Text(
                  'Welcome back',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'QuattrocentoSans',
                    fontWeight: FontWeight.w900,
                    fontSize: AppConsts.largeTitleSize,
                  ),
                ),
                const SizedBox(height: AppConsts.defPadding),
                const Text(
                  'Login to your account',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: AppConsts.defPadding * 4),
                const CustomTextField(
                  hintText: 'E-mail',
                ),
                const SizedBox(height: AppConsts.defPadding),
                const CustomTextField(
                  hintText: 'Password',
                ),
                const SizedBox(height: AppConsts.defPadding * 4),
                CustomButton(
                  title: 'LOGIN',
                  titleColor: Colors.white,
                  doGradient: true,
                  onPress: () {
                    // ignore: avoid_print
                    print('Log in user');
                  },
                ),
                const SizedBox(height: AppConsts.defPadding * 4),
                Align(
                  alignment: Alignment.center,
                  child: TextButton(
                    child: const Text(
                      'Forgot your passord?',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
