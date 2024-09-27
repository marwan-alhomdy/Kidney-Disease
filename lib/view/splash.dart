import 'package:dengue_fever/core/constant/colors.dart';
import 'package:dengue_fever/core/utils/style_text.dart';
import 'package:dengue_fever/view/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:get/get.dart';

import '../core/Animation/animation_column_widget.dart';

class SplachView extends StatelessWidget {
  const SplachView({super.key});

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
            Positioned(
              right: 20,
              bottom: 100,
              child: AnimationConfiguration.staggeredList(
                  position: 0,
                  delay: const Duration(milliseconds: 1000),
                  child: SlideAnimation(
                      duration: const Duration(milliseconds: 1000),
                      curve: Curves.easeInCubic,
                      verticalOffset: 0,
                      horizontalOffset: 220,
                      child: ScaleAnimation(
                          duration: const Duration(milliseconds: 1000),
                          curve: Curves.fastLinearToSlowEaseIn,
                          child: FadeInAnimation(
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.white),
                                  onPressed: () {
                                    Get.offAllNamed(HomeView.routeName);
                                  },
                                  child: Container(
                                    width: Get.width * 0.5,
                                    padding: const EdgeInsets.all(5),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Start".tr,
                                          textAlign: TextAlign.left,
                                          style: mainTextStyle.copyWith(
                                              color: mainColor, fontSize: 18),
                                        ),
                                        const SizedBox(width: 20),
                                        const Icon(
                                          Icons.navigate_next_rounded,
                                          color: mainColor,
                                        )
                                      ],
                                    ),
                                  )))))),
            ),
          ],
        ),
      ),
    );
  }
}
