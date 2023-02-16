import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/features/splash/presentation/views/home_view.dart';
import 'package:bookly/features/splash/presentation/views/widgets/sliding_text.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({Key? key}) : super(key: key);

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> animation;

  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    //single responspolty prenspole
    navigatToHome();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AppAssets.logo),
        const SizedBox(
          height: 4,
        ),
        SlidingText(animation: animation)
      ],
    );
  }

  void initSlidingAnimation() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    animation = Tween<Offset>(begin: const Offset(0, 2), end: Offset.zero)
        .animate(animationController);
    animationController.forward();
    animation.addListener(() {});
  }

  void navigatToHome() {
    Future.delayed(const Duration(seconds: 2), () {
      Get.offAll(() => const HomeView(),
          transition: Transition.fade, duration: kTranstionDuration);
    });
  }
}
