import 'package:flowerit/core/utils/appColors.dart';
import 'package:flowerit/core/utils/text_style.dart';
import 'package:flowerit/core/widget/custom_button.dart';
import 'package:flowerit/featuers/presentation/view/navBar.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class createPass extends StatefulWidget {
  const createPass({super.key});

  @override
  State<createPass> createState() => _createPassState();
}

bool isVisible = true;

TextEditingController _passwordController = TextEditingController();

class _createPassState extends State<createPass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                // Navigator.of(context).pushReplacement(MaterialPageRoute(
                //   builder: (context) => const registerView(),
                // ));
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
                  backgroundImage: AssetImage('assets/lock.png'),
                  radius: 70,
                ),
                const Gap(20),
                Text(
                  'إنشاء كلمة المرور',
                  style:
                      getTitleStyle(color: appColors.blackColor, fontSize: 24),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text(
                    'من فضلة قم بكتابة الرقم السري مرتين لنقوم بانشاء رقم سري لك',
                    textAlign: TextAlign.center,
                    style: getSmallStyle(),
                  ),
                ),
                const Gap(30),
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
                      hintText: 'كلمة المرور'),
                  obscureText: isVisible,
                  textAlign: TextAlign.right,
                  controller: _passwordController,
                  keyboardType: TextInputType.visiblePassword,
                  textInputAction: TextInputAction.next,
                ),
                const Gap(20),
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
                      hintText: 'اعادة كلمة السر'),
                  obscureText: isVisible,
                  textAlign: TextAlign.right,
                  controller: _passwordController,
                  keyboardType: TextInputType.visiblePassword,
                  textInputAction: TextInputAction.next,
                ),
                const Gap(20),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const navBar(),
                    ));
                  },
                  child: custom_button(
                      height: 64,
                      width: double.infinity,
                      color: appColors.primaryColor,
                      text: 'انشاء',
                      textStyle: getTitleStyle(color: appColors.whiteColor)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
