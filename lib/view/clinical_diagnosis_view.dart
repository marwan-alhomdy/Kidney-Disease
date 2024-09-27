import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../core/constant/image.dart';
import '../widget/report.dart';

class ClinicalDiagnosisView extends StatelessWidget {
  const ClinicalDiagnosisView({super.key});
  static const routeName = "/ClinicalDiagnosisView";
  @override
  Widget build(BuildContext context) {
    return ReportWidget(
        imageUrl: TypeImage.CLINICAL_DIAGNOSIS.value(),
        title: TypeImage.CLINICAL_DIAGNOSIS.name.tr,
        description: "ClinicalDiagnosisValue".tr);
  }
}
