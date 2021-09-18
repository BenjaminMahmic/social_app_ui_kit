import 'package:flutter/material.dart';
import 'package:social_app_ui_kit/components/custom_button.dart';
import 'package:social_app_ui_kit/components/text_field.dart';
import 'package:social_app_ui_kit/constants.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8),
          child: CircleAvatar(
            backgroundColor: AppConsts.primaryColor,
            child: Center(
              child: IconButton(
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
                onPressed: () => Navigator.of(context).pop(),
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: size.height,
          width: size.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/pictures/backgrounds/background4.jpg'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(Colors.black45, BlendMode.darken),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: AppConsts.defPadding * 2),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: AppConsts.defPadding * 6),
                const Text(
                  'Create an account',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'QuattrocentoSans',
                    fontSize: AppConsts.largeTitleSize,
                  ),
                ),
                const SizedBox(height: AppConsts.defPadding * 2),
                const CustomTextField(hintText: 'Username'),
                const SizedBox(height: AppConsts.defPadding),
                const CustomTextField(hintText: 'Email'),
                const SizedBox(height: AppConsts.defPadding),
                const CustomTextField(hintText: 'Phone'),
                const SizedBox(height: AppConsts.defPadding),
                const CustomTextField(hintText: 'Date of birthday'),
                const SizedBox(height: AppConsts.defPadding),
                const CustomTextField(hintText: 'Password'),
                const SizedBox(height: AppConsts.defPadding),
                const SizedBox(height: AppConsts.defPadding * 2),
                CustomButton(
                  title: 'SIGN UP',
                  titleColor: Colors.white,
                  onPress: () {},
                  doGradient: true,
                ),
                const SizedBox(height: AppConsts.defPadding * 3),
                const Text(
                  'By creating an account, you accept the rules of this application.',
                  style: TextStyle(color: Colors.white70),
                  textAlign: TextAlign.center,
                ),
                TextButton(
                  child: const Text(
                    'Check rules',
                    style: TextStyle(
                      color: AppConsts.secondaryColor,
                    ),
                  ),
                  onPressed: () {
                    // ignore: avoid_print
                    print('Show rules dialog');
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
