import 'package:flutter/material.dart';

enum StatusDengue {
  incompleteInput(
    "Incomplete Input",
    "المدخلات غير مكتملة",
    Colors.grey,
  ),

  // ignore: constant_identifier_names
  pyelonephritis(
    "Pyelonephritis",
    "التهاب الحويضة والكلية",
    Colors.orange,
  ),
  // ignore: constant_identifier_names
  kidneyCancer(
    "Kidney Cancer",
    "سرطان الكلى",
    Colors.red,
  ),
  // ignore: constant_identifier_names
  chronicKidneyDisease(
    "Chronic Kidney Disease",
    "مرض الكلى المزمن",
    Colors.red,
  ),
  // ignore: constant_identifier_names
  renalCellCarcinoma(
    "Renal Cell Carcinoma",
    "سرطان الخلايا الكلوية",
    Colors.red,
  ),
  acuteKidneyFailure(
    "Acute Kidney Failure",
    "الفشل الكلوي الحاد",
    Colors.red,
  ),
  kidneyInfection(
    "Kidney Infection",
    "عدوى الكلى",
    Colors.red,
  ),
  kidneyStones(
    "Kidney Stones",
    "حصى الكلى",
    Colors.orange,
  );

  const StatusDengue(this.title, this.arabicTitle, this.color);
  final String title;
  final String arabicTitle;
  final Color color;
}
