import 'package:kidney_disease/core/utils/style_text.dart';
import 'package:kidney_disease/view/home.view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:get/get.dart';

import '../core/Animation/animation_column_widget.dart';

class SplachView extends StatefulWidget {
  const SplachView({super.key});

  @override
  State<SplachView> createState() => SplachViewState();
}

class SplachViewState extends State<SplachView>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () async {
      Get.offAllNamed(HomeView.routeName);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/background_splach.jpg"),
              fit: BoxFit.cover),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
                left: -80,
                bottom: 0,
                child: AnimationConfiguration.staggeredList(
                    position: 0,
                    delay: const Duration(milliseconds: 1000),
                    child: SlideAnimation(
                        duration: const Duration(milliseconds: 1000),
                        curve: Curves.easeInCubic,
                        verticalOffset: 0,
                        horizontalOffset: -220,
                        child: ScaleAnimation(
                            duration: const Duration(milliseconds: 1000),
                            curve: Curves.fastLinearToSlowEaseIn,
                            child: FadeInAnimation(
                                child: Image.asset(
                              "assets/images/doctor.png",
                              width: 400,
                            )))))),
            Positioned(
                top: 80,
                child: AnimationColumnWidget(
                  // mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      "assets/icons/dengue2.png",
                      width: 80,
                      color: Colors.black,
                    ),
                    Text(
                      "Kideny Disease".tr,
                      style: mainTextStyle.copyWith(
                        color: Colors.black,
                        fontSize: 40,
                      ),
                    ),
                    Container(
                      width: Get.width,
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        "abuot".tr,
                        maxLines: 5,
                        textAlign: TextAlign.center,
                        style: mainTextStyle.copyWith(
                            // backgroundColor: Colors.green,
                            color: Colors.black,
                            fontSize: 14),
                      ),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
