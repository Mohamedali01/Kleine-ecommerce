import 'package:chat/app/auth/view/login_screen.dart';
import 'package:chat/app/auth/view/register_screen.dart';
import 'package:chat/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/background.png',
            fit: BoxFit.fill,
            height: double.infinity,
            width: double.infinity,
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Spacer(
                    flex: 3,
                  ),
                  Image.asset(
                    'assets/images/logo.png',
                    width: 90,
                    height: 30,
                  ),
                  const Spacer(),
                  Image.asset('assets/images/intro_text.png'),
                  const Spacer(
                    flex: 2,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(() => RegisterScreen());
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CustomText(
                          'Register',
                          fontSize: 27,
                          fontWeight: FontWeight.w700,
                          fontFamily: fontFamily,
                          color: Colors.black,
                        ),
                        Image.asset(
                          'assets/images/play_button.png',
                          width: 64,
                          height: 64,
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: GestureDetector(
                        onTap: () {
                          Get.to(() => LoginScreen());
                        },
                        child: CustomText(
                          'Log In',
                          color: const Color(0xff666666),
                          fontSize: 17,
                        ),
                      ),
                    ),
                  ),
                  const Spacer(
                    flex: 2,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
