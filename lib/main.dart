import 'package:e_commerce/core/localization/change_local.dart';
import 'package:e_commerce/core/localization/translation.dart';
import 'package:e_commerce/core/services/app_services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'core/app router/get_pages.dart';
import 'core/app theme/app_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await servicesInit();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    LocalController controller = Get.put(LocalController());
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: darkEnglishTheme,
      getPages: pages,
      locale: controller.language,
      translations: AppTranslation(),
    );
  }
}