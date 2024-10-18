import 'package:kidney_disease/view/checkup_view.dart';
import 'package:kidney_disease/view/clinical_diagnosis_view.dart';
import 'package:kidney_disease/view/prevention_view.dart';
import 'package:kidney_disease/view/splash.dart';
import 'package:kidney_disease/view/symptoms_view.dart';
import 'package:kidney_disease/view/treatment_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'core/locale/data_locale_translation.dart';
import 'core/locale/locale_controller.dart';
import 'helper/cache_helper.dart';
import 'view/checkup_view2.dart';
import 'view/home_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    LocaleController localeController = Get.put(LocaleController());
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kidney Disease ',
      home: const SplachView(),
      locale: localeController.initLocale,
      translations: DataLoacleTranslations(),
      getPages: [
        GetPage(name: HomeView.routeName, page: () => const HomeView()),
        GetPage(name: CheckupView.routeName, page: () => const CheckupView()),
        GetPage(
            name: PreventionView.routeName, page: () => const PreventionView()),
        GetPage(
            name: TreatmentView.routeName, page: () => const TreatmentView()),
        GetPage(
            name: ClinicalDiagnosisView.routeName,
            page: () => const ClinicalDiagnosisView()),
        GetPage(name: SymptomsView.routeName, page: () => const SymptomsView()),
        // GetPage(name: ChoseExap.routeName, page: () => ChoseExap()),
      ],
    );
  }
}
