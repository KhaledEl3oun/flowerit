import 'package:flowerit/core/utils/appColors.dart';
import 'package:flowerit/core/utils/text_style.dart';
import 'package:flowerit/core/widget/custom_button.dart';
import 'package:flowerit/featuers/auth/view/otpView.dart';
import 'package:flowerit/featuers/auth/view/signIn.dart';
import 'package:flowerit/featuers/intro/splash/blueSplash.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class registerView extends StatefulWidget {
  const registerView({super.key});

  @override
  State<registerView> createState() => _registerViewState();
}

String generateCountryFlag() {
  String countryCode = 'eg';

  String flag = countryCode.toUpperCase().replaceAllMapped(RegExp(r'[A-Z]'),
      (match) => String.fromCharCode(match.group(0)!.codeUnitAt(0) + 127397));

  return flag;
}

bool isVisible = true;
final TextEditingController _emailController = TextEditingController();
TextEditingController _passwordController = TextEditingController();
TextEditingController _phoneNumController = TextEditingController();

class _registerViewState extends State<registerView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => const splash2(),
                ));
              },
              icon: const Icon(Icons.arrow_forward_ios_outlined)),
        ],
        leading: Icon(
          Icons.abc,
          color: appColors.whiteColor,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage('assets/users.png'),
                  radius: 70,
                ),
                const Gap(30),
                TextFormField(
                  textAlign: TextAlign.left,
                  controller: _passwordController,
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                  decoration:
                      const InputDecoration(hintText: 'ahmed@example.com'),
                ),
                const Gap(10),
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: TextFormField(
                        textAlign: TextAlign.left,
                        controller: _emailController,
                        keyboardType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.next,
                        decoration:
                            const InputDecoration(hintText: '01123456789'),
                      ),
                    ),
                    const Gap(10),
                    Expanded(
                        flex: 1,
                        child: Container(
                          height: 64,
                          decoration: BoxDecoration(
                              border: Border.all(color: appColors.blackColor),
                              borderRadius: BorderRadius.circular(5)),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 12, vertical: 16),
                          child: Center(
                              child: Text(
                            '${generateCountryFlag()} +20',
                            style: const TextStyle(
                                fontSize: 20, letterSpacing: 2.0),
                          )),
                        )),
                  ],
                ),
                const Gap(10),
                TextFormField(
                  decoration: InputDecoration(
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            isVisible = !isVisible;
                          });
                        },
                        icon: Icon(
                          (isVisible)
                              ? Icons.remove_red_eye
                              : Icons.visibility_off,
                          color: appColors.primaryColor,
                        ),
                      ),
                      prefixIcon: Icon(
                        Icons.lock,
                        color: appColors.primaryColor,
                      ),
                      hintText: 'enter your password'),
                  obscureText: isVisible,
                  textAlign: TextAlign.left,
                  controller: _phoneNumController,
                  keyboardType: TextInputType.visiblePassword,
                  textInputAction: TextInputAction.next,
                ),
                const Gap(20),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const otpView(),
                    ));
                  },
                  child: custom_button(
                      height: 64,
                      width: double.infinity,
                      color: appColors.primaryColor,
                      text: 'تسجيل ',
                      textStyle: getTitleStyle(color: appColors.whiteColor)),
                ),
                const Gap(20),
                Text(
                  'أو قم بتسجيل  باستخدام',
                  style: getbodyStyle(),
                ),
                const Gap(20),
                Row(
                  children: [
                    Container(
                      height: 48,
                      width: 165,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: const Color.fromARGB(255, 224, 224, 224)),
                      child: Padding(
                        padding: const EdgeInsets.only(right: 40, left: 10),
                        child: Row(
                          children: [
                            Text(
                              'facebook',
                              style: getbodyStyle(fontSize: 14),
                            ),
                            const Gap(10),
                            Image.asset('assets/facebook.png'),
                          ],
                        ),
                      ),
                    ),
                    const Gap(20),
                    Container(
                      height: 48,
                      width: 165,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: const Color.fromARGB(255, 224, 224, 224)),
                      child: Padding(
                        padding: const EdgeInsets.only(right: 50, left: 10),
                        child: Row(
                          children: [
                            Text(
                              'google',
                              style: getbodyStyle(fontSize: 14),
                            ),
                            const Gap(10),
                            Image.asset('assets/google.png'),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                const Gap(30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'لديك حساب ؟ ',
                      style: getSmallStyle(),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => const signInView(),
                        ));
                      },
                      child: Text(
                        'دخول',
                        style: getSmallStyle(color: appColors.primaryColor),
                      ),
                    )
                  ],
                ),
                const Gap(20)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
