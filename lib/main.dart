import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'core/app router/get_pages.dart';
import 'core/app theme/app_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: darkTheme,
      getPages: pages,
    );
  }
}