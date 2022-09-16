import 'package:chat/app/auth/view/intro_screen.dart';
import 'package:chat/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

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
                  const Spacer(),
                  Image.asset(
                    'assets/images/splash_image.png',
                    width: 240,
                    height: 274,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Image.asset('assets/images/splash_text.png'),
                  const Spacer(),
                  SizedBox(
                    width: 130,
                    height: 43,
                    child: TextButton(
                      onPressed: () {
                        Get.to(()=>const IntroScreen());
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.black),
                      ),
                      child: CustomText(
                        'Next',
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const Spacer(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
