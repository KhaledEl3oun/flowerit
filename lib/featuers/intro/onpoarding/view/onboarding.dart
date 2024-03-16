import 'package:flowerit/core/utils/appColors.dart';
import 'package:flowerit/core/utils/text_style.dart';
import 'package:flowerit/featuers/intro/onpoarding/view_model/onboarding_model.dart';
import 'package:flowerit/featuers/intro/onpoarding/widget/onboardingItem.dart';
import 'package:flowerit/featuers/intro/splash/blueSplash.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class onboarding extends StatefulWidget {
  const onboarding({super.key});

  @override
  State<onboarding> createState() => _onboardingState();
}

List<OnboardingModel> pages = [
  OnboardingModel(
      title: 'عبر عن مشاعرك بهدية ورد لمن تحب',
      description:
          'نحن في فلاورايت نقدم افضل تشكيلات الزهور من خلال افضل المتاجر'),
  OnboardingModel(
      title: 'تسوق عبر الكثير من متاجر الزهور',
      description:
          'نحن في فلاورايت نقدم افضل تشكيلات الزهور من خلال افضل المتاجر'),
  OnboardingModel(
      title: 'صمم هديتك بنفسك واكتب رسالتك',
      description:
          'نحن في فلاورايت نقدم افضل تشكيلات الزهور من خلال افضل المتاجر'),
];
int index = 0;
PageController _pageController = PageController();

class _onboardingState extends State<onboarding> {
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
                        image: AssetImage('assets/onboarding.png'),
                        fit: BoxFit.cover)),
              )),
              Expanded(
                  child: Container(
                color: const Color(0xffE6F0F1),
                child: Directionality(
                  textDirection: TextDirection.ltr,
                  child: Column(
                    children: [
                      Expanded(
                        child: PageView.builder(
                          onPageChanged: (value) {
                            setState(() {
                              index = value;
                            });
                          },
                          controller: _pageController,
                          itemCount: pages.length,
                          itemBuilder: (context, index) {
                            return onboardingItem(model: pages[index]);
                          },
                        ),
                      ),
                      (index == 2)
                          ? Column(
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.of(context)
                                        .pushReplacement(MaterialPageRoute(
                                      builder: (context) => const splash2(),
                                    ));
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.only(bottom: 5),
                                    child: CircleAvatar(
                                      backgroundColor: appColors.primaryColor,
                                      radius: 30,
                                      child: Icon(
                                        Icons.arrow_forward_ios_outlined,
                                        color: appColors.whiteColor,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 50),
                                  child: Text(
                                    'اضغط هنا واكتشف',
                                    style: getSmallStyle(),
                                  ),
                                ),
                              ],
                            )
                          : const SizedBox(),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 50),
                        child: SmoothPageIndicator(
                          controller: _pageController,
                          count: 3,
                          effect: ExpandingDotsEffect(
                              activeDotColor: appColors.primaryColor),
                        ),
                      ),
                    ],
                  ),
                ),
              )),
            ],
          ),
        ],
      ),
    );
  }
}
