import 'package:e_commerce/core/app%20router/app_routes.dart';
import 'package:e_commerce/core/services/app_services.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class AppMiddleware extends GetMiddleware {
  AppServices appServices = Get.find();

  @override
  int? get priority => 1;

  @override
  RouteSettings? redirect(String? route) {
    if (appServices.sharedPreferences.getBool('login') == true) {
      return const RouteSettings(name: AppRoutes.login);
    }
    return null;
  }
}
