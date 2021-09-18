import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:social_app_ui_kit/components/custom_button.dart';
import 'package:social_app_ui_kit/constants.dart';
import 'package:social_app_ui_kit/screens/log_reg_home/components/bottom_oprions.dart';
import 'package:social_app_ui_kit/screens/login/login_screen.dart';
import 'package:social_app_ui_kit/screens/register/register_screen.dart';

class LogRegHomeScreen extends StatelessWidget {
  const LogRegHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: size.height,
            width: size.width,
            child: Image.asset(
              'assets/pictures/backgrounds/background1.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  AppConsts.appBlackColor,
                  AppConsts.appBlackColor.withOpacity(0.1),
                ],
                stops: const [0, 1],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              ),
            ),
          ),
          Positioned(
            bottom: AppConsts.defPadding,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: AppConsts.defPadding * 2,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Find new\nfriends nerbay',
                    style: TextStyle(
                      color: AppConsts.appWhiteColor,
                      fontFamily: 'QuattrocentoSans',
                      fontSize: AppConsts.largeTitleSize,
                      fontWeight: FontWeight.w900,
                      shadows: [
                        Shadow(
                          color: AppConsts.appBlackColor.withOpacity(0.5),
                          blurRadius: 10,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: AppConsts.defPadding * 2),
                  SizedBox(
                    width: size.width * 0.8,
                    child: const Text(
                      'With milions of users over the world, we give you the ability to connect with people no metter where you are.',
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        color: Colors.white70,
                      ),
                    ),
                  ),
                  const SizedBox(height: AppConsts.defPadding * 4),
                  CustomButton(
                    title: 'Log in',
                    titleColor: AppConsts.secondaryColor,
                    onPress: () {
                      Navigator.push(
                        context,
                        PageTransition(
                          type: PageTransitionType.fade,
                          child: const LoginScreen(),
                          duration: const Duration(milliseconds: 300),
                          ctx: context,
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: AppConsts.defPadding),
                  CustomButton(
                    title: 'Sign up',
                    titleColor: Colors.white,
                    doGradient: true,
                    onPress: () {
                      Navigator.push(
                        context,
                        PageTransition(
                          type: PageTransitionType.fade,
                          child: const RegisterScreen(),
                          duration: const Duration(milliseconds: 300),
                          ctx: context,
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: AppConsts.defPadding * 4),
                  const BottomOptions(),
                  const SizedBox(height: AppConsts.defPadding * 2),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
