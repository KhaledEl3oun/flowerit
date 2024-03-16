import 'package:flowerit/core/utils/appColors.dart';
import 'package:flowerit/core/utils/text_style.dart';
import 'package:flowerit/core/widget/custom_button.dart';
import 'package:flowerit/featuers/auth/view/createPass.dart';
import 'package:flowerit/featuers/auth/view/register.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class otpView extends StatelessWidget {
  const otpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => const registerView(),
                ));
              },
              icon: const Icon(Icons.arrow_forward_ios_outlined)),
        ],
        leading: Icon(
          Icons.abc,
          color: appColors.whiteColor,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: Column(
          children: [
            Text(
              'تحقق من رقمك',
              style: getTitleStyle(color: appColors.blackColor, fontSize: 24),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Text(
                'لقد أرسلنا الرمز إلى البريد الإلكتروني الموجود على جهازك',
                textAlign: TextAlign.center,
                style: getSmallStyle(),
              ),
            ),
            const CircleAvatar(
              backgroundImage: AssetImage('assets/otp.png'),
              radius: 70,
            ),
            const Gap(20),
            PinCodeTextField(
              keyboardType: TextInputType.number,
              appContext: context,
              length: 4,
              obscureText: false,
              animationType: AnimationType.fade,
              pinTheme: PinTheme(
                  activeColor: const Color.fromARGB(255, 209, 209, 209),
                  inactiveColor: appColors.primaryColor,
                  inactiveFillColor: appColors.whiteColor,
                  errorBorderColor: appColors.whiteSplashColor,
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(5),
                  fieldHeight: 50,
                  fieldWidth: 40,
                  activeFillColor: Colors.white,
                  selectedColor: const Color.fromARGB(255, 209, 209, 209),
                  selectedFillColor: const Color.fromARGB(255, 209, 209, 209)),
              animationDuration: const Duration(milliseconds: 300),
              backgroundColor: const Color.fromARGB(255, 255, 255, 255),
              enableActiveFill: true,
              onCompleted: (v) {
                print("Completed");
              },
              onChanged: (value) {
                print(value);
              },
              beforeTextPaste: (text) {
                print("Allowing to paste $text");
                //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                //but you can show anything you want here, like your pop up saying wrong paste format or etc
                return true;
              },
            ),
            const Gap(50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'تنتهي صلاحية الرمز في : ',
                  style: getSmallStyle(),
                ),
                Text(
                  '00 : 56',
                  style: getSmallStyle(color: appColors.primaryColor),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'لم تتلق الرمز؟',
                  style: getSmallStyle(),
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    'أعد إرسال الرمز',
                    style: getSmallStyle(color: appColors.primaryColor),
                  ),
                )
              ],
            ),
            const Spacer(),
            InkWell(
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => const createPass(),
                ));
              },
              child: custom_button(
                  color: appColors.primaryColor,
                  text: 'تاكيد',
                  textStyle: getbodyStyle(color: appColors.whiteColor),
                  height: 64,
                  width: double.infinity),
            )
          ],
        ),
      ),
    );
  }
}
