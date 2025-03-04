import 'package:ecommerceapp/view/screen/home.dart';
import 'package:ecommerceapp/view/widget/home/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbarHome(),
      body: PersistentTabView(
        context,
        screens: [
          const Home(),
          const Center(
            child: Text("screen"),
          ),
          const Center(
            child: Text("screen"),
          ),
          const Center(
            child: Text("screen"),
          ),
        ],
        items: [
          PersistentBottomNavBarItem(icon: const Icon(Icons.home)),
          PersistentBottomNavBarItem(icon: const Icon(Icons.favorite)),
          PersistentBottomNavBarItem(icon: const Icon(Icons.settings)),
          PersistentBottomNavBarItem(icon: const Icon(Icons.person)),
        ],
        handleAndroidBackButtonPress: true, // Default is true.
        resizeToAvoidBottomInset:
            true, // This needs to be true if you want to move up the screen on a non-scrollable screen when keyboard appears. Default is true.
        stateManagement: true, // Default is true.
        hideNavigationBarWhenKeyboardAppears: true,
        popBehaviorOnSelectedNavBarItemPress: PopBehavior.all,
        padding: const EdgeInsets.only(top: 8),
        backgroundColor: Colors.white,
        isVisible: true,
        animationSettings: const NavBarAnimationSettings(
          navBarItemAnimation: ItemAnimationSettings(
            // Navigation Bar's items animation properties.
            duration: Duration(milliseconds: 400),
            curve: Curves.ease,
          ),
          screenTransitionAnimation: ScreenTransitionAnimationSettings(
            // Screen transition animation on change of selected tab.
            animateTabTransition: true,
            duration: Duration(milliseconds: 200),
            screenTransitionAnimationType: ScreenTransitionAnimationType.fadeIn,
          ),
        ),
        confineToSafeArea: true,
        navBarHeight: kBottomNavigationBarHeight,
        navBarStyle:
            NavBarStyle.style1, // Choose the nav bar style with this property
      ),
    );
  }
}
