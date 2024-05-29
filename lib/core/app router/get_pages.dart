import 'package:e_commerce/core/app%20router/app_routes.dart';
import 'package:e_commerce/view/screens/auth/forget%20password/forget_password.dart';
import 'package:e_commerce/view/screens/auth/login_view.dart';
import 'package:e_commerce/view/screens/auth/signup_view.dart';
import 'package:e_commerce/view/screens/choose_language.dart';
import 'package:e_commerce/view/screens/onboarding.dart';
import 'package:e_commerce/view/screens/splash_view.dart';
import 'package:get/get.dart';

List<GetPage<dynamic>>? pages = [
  GetPage(name: AppRoutes.splashView, page: () => const SplashView()),
  GetPage(name: AppRoutes.chooseLanguage, page: () => const ChooseLanguage()),
  GetPage(name: AppRoutes.onboarding, page: () => const Onboarding()),
  GetPage(name: AppRoutes.login, page: () => const LoginView()),
  GetPage(name: AppRoutes.signup, page: () => const SignupView()),
  GetPage(name: AppRoutes.forgetPassword, page: () => const ForgetPassword()),
];
