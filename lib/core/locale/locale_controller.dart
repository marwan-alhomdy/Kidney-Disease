import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import '../../helper/cache_helper.dart';
import '../constant/cache.dart';

class LocaleController extends GetxController {
  String languageCode = "";
  LocaleController() {
    initLocale = init();
  }
  late Locale initLocale;
  Locale init() {
    if (CacheHelper.getString(LANGUAGE) == null) {
      languageCode = "ar";
      CacheHelper.setString(LANGUAGE, 'ar');
      return const Locale("ar");
    } else {
      return Locale(CacheHelper.getString(LANGUAGE)!);
    }
  }

  void chingeLanguage({required String languageCode}) {
    Locale locale = Locale(languageCode);
    this.languageCode = languageCode;
    CacheHelper.setString(LANGUAGE, languageCode);
    Get.updateLocale(locale);
  }
}
