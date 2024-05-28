import 'package:e_commerce/core/app%20router/app_routes.dart';
import 'package:e_commerce/view/screens/splash_view.dart';
import 'package:get/get.dart';

List<GetPage<dynamic>>? pages = [
  GetPage(name: AppRoutes.splashView, page: () => const SplashView()),
];