import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../core/constant/cache.dart';
import '../../core/constant/colors.dart';
import '../../core/utils/style_text.dart';
import '../../controller/tree.dart';
import '../../helper/cache_helper.dart';

class ButtonCheckupWidget extends StatelessWidget {
  const ButtonCheckupWidget({super.key, required this.treeDengue});
  final KidneyDiagnosisTree treeDengue;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: showCkeckout,
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 10),
        padding: const EdgeInsets.all(10),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: mainColor, borderRadius: BorderRadius.circular(18)),
        child: Text(
          "Types of Dengue fever".tr,
          textAlign: TextAlign.left,
          style: mainTextStyle.copyWith(color: Colors.white, fontSize: 18),
        ),
      ),
    );
  }

  void showCkeckout() {
    final statusDengue = treeDengue.diagnose();
    final reuslt = (CacheHelper.getString(LANGUAGE) == 'ar')
        ? statusDengue.arabicTitle
        : statusDengue.title;
    Get.defaultDialog(
      title: "",
      // titleStyle: ,
      middleText: "Types of Dengue fever".tr.toUpperCase(),
      middleTextStyle: mainTextStyle.copyWith(fontSize: 20),
      actions: [
        Image.asset(
          "assets/icons/dengue2.png",
          color: statusDengue.color,
        ),
        Text(reuslt, style: mainTextStyle),
        const SizedBox(height: 20)
      ],
    );
  }
}
