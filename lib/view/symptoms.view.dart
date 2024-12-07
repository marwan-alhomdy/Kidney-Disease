import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../core/constant/image.dart';
import '../widget/report.dart';

class SymptomsView extends StatelessWidget {
  const SymptomsView({super.key});
  static const routeName = "/SymptomsView";
  @override
  Widget build(BuildContext context) {
    return ReportWidget(
        imageUrl: TypeImage.SYMPTOMS.value(),
        title: TypeImage.SYMPTOMS.name.tr,
        description: "SymptomsValue".tr);
  }
}
