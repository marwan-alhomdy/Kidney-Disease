import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../core/constant/image.dart';
import '../widget/report.dart';

class TreatmentView extends StatelessWidget {
  const TreatmentView({super.key});
  static const routeName = "/TreatmentView";
  @override
  Widget build(BuildContext context) {
    return ReportWidget(
        imageUrl: TypeImage.TREATMENT.value(),
        title: TypeImage.TREATMENT.name.tr,
        description: "TreatmentVlaue".tr);
  }
}
