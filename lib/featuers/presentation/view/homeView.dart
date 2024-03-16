import 'package:flowerit/core/utils/appColors.dart';
import 'package:flowerit/core/utils/text_style.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class homeView extends StatefulWidget {
  const homeView({super.key});

  @override
  State<homeView> createState() => _homeViewState();
}

class _homeViewState extends State<homeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 332,
            width: double.infinity,
            decoration: BoxDecoration(
                color: appColors.primaryColor,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(25),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    Image.asset('assets/Location.png'),
                    const Gap(10),
                    Column(
                      children: [
                        Text(
                          'موقع التسليم',
                          style: getbodyStyle(color: appColors.whiteColor),
                        ),
                        Text('القاهره - حلوان',
                            style: getTitleStyle(color: appColors.whiteColor)),
                      ],
                    ),
                    const Spacer(),
                    Image.asset('assets/not.png'),
                    const Gap(5),
                    Image.asset('assets/heart.png'),
                  ],
                ),
                Image.asset('assets/card.png'),
                TextFormField(
                  textAlign: TextAlign.left,
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                      hintText: '',
                      fillColor: appColors.whiteColor,
                      filled: true),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
