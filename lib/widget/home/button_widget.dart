import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../core/utils/style_text.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget(
      {super.key, required this.pathImage, required this.text, this.onTap});
  final String pathImage;
  final String text;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: Get.height * 0.14,
        margin: const EdgeInsets.only(bottom: 5),
        decoration: BoxDecoration(
            color: const Color.fromARGB(33, 82, 78, 78),
            borderRadius: BorderRadius.circular(20)),
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [
            Image.asset(pathImage, fit: BoxFit.fill),
            Expanded(
                child: Text(
              text,
              style: mainTextStyle.copyWith(fontSize: 18),
              textAlign: TextAlign.center,
            ))
          ],
        ),
      ),
    );
  }
}
