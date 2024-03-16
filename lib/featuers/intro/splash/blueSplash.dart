// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flowerit/core/utils/appColors.dart';
import 'package:flowerit/core/utils/text_style.dart';
import 'package:flowerit/core/widget/custom_button.dart';
import 'package:flowerit/featuers/auth/view/register.dart';
import 'package:flutter/material.dart';

class splash2 extends StatefulWidget {
  const splash2({super.key});

  @override
  State<splash2> createState() => _splash2State();
}

class _splash2State extends State<splash2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                  child: Container(
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/splash2.png'),
                        fit: BoxFit.cover)),
              )),
              Expanded(
                  child: Container(
                color: appColors.blueSplashColor,
              )),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 200),
                child: Center(child: Image.asset('assets/Logo (1).png')),
              ),
              const SizedBox(height: 60),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const registerView(),
                        ));
                      },
                      child: custom_button(
                          height: 54,
                          width: double.infinity,
                          color: appColors.whiteColor,
                          text: 'تسجيل الدخول',
                          textStyle: getTitleStyle()),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    InkWell(
                      onTap: () {},
                      child: custom_button(
                          height: 54,
                          width: double.infinity,
                          color: const Color.fromARGB(255, 1, 123, 134),
                          text: 'تخطي',
                          textStyle: getTitleStyle(
                            color: appColors.whiteColor,
                          )),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
