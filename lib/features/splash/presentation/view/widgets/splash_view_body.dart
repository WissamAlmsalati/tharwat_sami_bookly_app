import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/features/home/data/presentation/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../../../constanse.dart';
import 'sliding_text_wedget.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>with SingleTickerProviderStateMixin {
  late AnimationController _animationcontroller;
  late Animation<Offset> slideAnimation;


  @override
  void initState(){
    super.initState();
    initSlidingAnimation(); //
    navigatToHomeScreen();
  }


  void disposo(){
    _animationcontroller.dispose();
    super.dispose();
  }

  @override

  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SvgPicture.asset(AsData.logo, height: 70, width: 70),
        const SizedBox(height: 20),
        AnimationWedget(slideAnimation: slideAnimation),
      ],
    );
  }

  void initSlidingAnimation() {
    _animationcontroller=AnimationController(vsync: this,duration:const Duration(seconds: 1));
    slideAnimation=Tween<Offset>(begin:const Offset(0,15) ,end:Offset.zero).animate(_animationcontroller);
    _animationcontroller.forward();
  }

  void navigatToHomeScreen() {
    Future.delayed(const Duration(seconds: 3),()
    {
      Get.to(()=>const HomeView(),transition: Transition.fade,duration: kDuration);
    })  ;
  }
}



