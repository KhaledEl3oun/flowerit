// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:flowerit/core/utils/appColors.dart';
import 'package:flowerit/core/utils/text_style.dart';
import 'package:flowerit/featuers/intro/onpoarding/view_model/onboarding_model.dart';

class onboardingItem extends StatelessWidget {
  const onboardingItem({
    Key? key,
    required this.model,
  }) : super(key: key);
  final OnboardingModel model;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(right: 50, left: 50),
        child: Column(
          children: [
            Text(
             model.title,
              textAlign: TextAlign.center,
              style: getTitleStyle(color: appColors.blackColor, fontSize: 32),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
             model.description,
              textAlign: TextAlign.center,
              style: getTitleStyle(color: Colors.grey, fontSize: 14),
            )
          ],
        ),
      ),
    );
  }
}
