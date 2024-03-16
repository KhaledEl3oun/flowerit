import 'package:flowerit/core/utils/appColors.dart';
import 'package:flowerit/featuers/intro/onpoarding/view/onboarding.dart';
import 'package:flowerit/featuers/intro/splash/blueSplash.dart';
import 'package:flutter/material.dart';

class splash1 extends StatefulWidget {
  const splash1({super.key});

  @override
  State<splash1> createState() => _splash1State();
}

class _splash1State extends State<splash1> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 4),
      () {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => const onboarding(),
        ));
      },
    );
  }

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
                        image: AssetImage('assets/splash1.png'),
                        fit: BoxFit.cover)),
              )),
              Expanded(
                  child: Container(
                color: appColors.whiteSplashColor,
              )),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 200),
                child: Center(child: Image.asset('assets/Logo.png')),
              ),
              const SizedBox(height: 150),
              CircularProgressIndicator(
                color: appColors.primaryColor,
              )
            ],
          )
        ],
      ),
    );
  }
}
