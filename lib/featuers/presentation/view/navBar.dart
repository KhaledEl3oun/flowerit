import 'package:flowerit/core/utils/appColors.dart';
import 'package:flowerit/core/utils/text_style.dart';
import 'package:flowerit/featuers/presentation/view/basketView.dart';
import 'package:flowerit/featuers/presentation/view/homeView.dart';
import 'package:flowerit/featuers/presentation/view/ordersView.dart';
import 'package:flowerit/featuers/presentation/view/productsView.dart';
import 'package:flowerit/featuers/presentation/view/profileView.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class navBar extends StatefulWidget {
  const navBar({super.key});

  @override
  State<navBar> createState() => _navBarState();
}

List<Widget> screens = [
  const homeView(),
  const productsView(),
  const basketView(),
  const ordersView(),
  const profileView(),
];
int _index = 0;

class _navBarState extends State<navBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_index],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _index,
          onTap: (value) {
            setState(() {
              _index = value;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/home.svg'),
                activeIcon: SvgPicture.asset(
                  'assets/home.svg',
                  colorFilter:
                      ColorFilter.mode(appColors.primaryColor, BlendMode.srcIn),
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/products.svg'),
                activeIcon: SvgPicture.asset(
                  'assets/products.svg',
                  colorFilter:
                      ColorFilter.mode(appColors.primaryColor, BlendMode.srcIn),
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Container(
                  decoration: BoxDecoration(
                      color: appColors.primaryColor,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.elliptical(30, 70),
                        topRight: Radius.elliptical(30, 70),
                        bottomLeft: Radius.elliptical(30, 30),
                        bottomRight: Radius.elliptical(30, 30),
                      )),
                  height: 60,
                  width: 65,
                  child: Padding(
                    padding: const EdgeInsets.all(6),
                    child: Column(
                      children: [
                        SvgPicture.asset('assets/basket.svg'),
                        Text(
                          'السله',
                          style: getSmallStyle(color: appColors.whiteColor),
                        )
                      ],
                    ),
                  ),
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/orders.svg'),
                activeIcon: SvgPicture.asset(
                  'assets/orders.svg',
                  colorFilter:
                      ColorFilter.mode(appColors.primaryColor, BlendMode.srcIn),
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/profile.svg'),
                activeIcon: SvgPicture.asset(
                  'assets/profile.svg',
                  colorFilter:
                      ColorFilter.mode(appColors.primaryColor, BlendMode.srcIn),
                ),
                label: ''),
          ]),
    );
  }
}
