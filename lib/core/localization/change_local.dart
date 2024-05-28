import 'package:e_commerce/core/services/app_services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../app theme/app_theme.dart';

class LocalController extends GetxController {
  Locale? language;

  AppServices appServices = Get.find();
  ThemeData appTheme = darkEnglishTheme;

  changeLocal(String langCode) async {
    Locale locale = Locale(langCode);
    await appServices.sharedPreferences.setString('lang', langCode);
    appTheme = langCode == 'ar' ? darkArabicTheme : darkEnglishTheme;
    Get.changeTheme(appTheme);
    Get.updateLocale(locale);
  }

  @override
  void onInit() {
    var sharedPrefLang = appServices.sharedPreferences.getString('lang');
    if (sharedPrefLang == 'en') {
      language = const Locale('en');
      appTheme = darkEnglishTheme;
    } else if (sharedPrefLang == 'ar') {
      language = const Locale('ar');
      appTheme = darkArabicTheme;
    } else {
      language = Locale(Get.deviceLocale!.languageCode);
    }
    super.onInit();
  }
}
