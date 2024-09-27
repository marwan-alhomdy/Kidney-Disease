import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../core/constant/image.dart';
import '../widget/report.dart';

class PreventionView extends StatelessWidget {
  const PreventionView({super.key});
  static const routeName = "/PreventionView";
  @override
  Widget build(BuildContext context) {
    return ReportWidget(
        imageUrl: TypeImage.PREVENTION.value(),
        title: TypeImage.PREVENTION.name.tr,
        description: "PreventionValue".tr);
  }
}
