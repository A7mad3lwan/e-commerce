import 'package:e_commerce/core/app%20middleware/middleware.dart';
import 'package:e_commerce/core/app%20router/app_routes.dart';
import 'package:e_commerce/view/screens/auth/forget%20password/forget_password.dart';
import 'package:e_commerce/view/screens/auth/forget%20password/reset_password.dart';
import 'package:e_commerce/view/screens/auth/forget%20password/success_reset_password.dart';
import 'package:e_commerce/view/screens/auth/forget%20password/verify_code.dart';
import 'package:e_commerce/view/screens/auth/login_view.dart';
import 'package:e_commerce/view/screens/auth/signup_success.dart';
import 'package:e_commerce/view/screens/auth/signup_verify.dart';
import 'package:e_commerce/view/screens/auth/signup_view.dart';
import 'package:e_commerce/view/screens/choose_language.dart';
import 'package:e_commerce/view/screens/onboarding.dart';
import 'package:e_commerce/view/screens/splash_view.dart';
import 'package:get/get.dart';

List<GetPage<dynamic>>? pages = [
  GetPage(name: '/', page: () => const SplashView(), middlewares: [
    AppMiddleware(),
  ]),
  GetPage(name: AppRoutes.chooseLanguage, page: () => const ChooseLanguage()),
  GetPage(name: AppRoutes.onboarding, page: () => const Onboarding()),
  GetPage(name: AppRoutes.login, page: () => const LoginView()),
  GetPage(name: AppRoutes.signup, page: () => const SignupView()),
  GetPage(name: AppRoutes.forgetPassword, page: () => const ForgetPassword()),
  GetPage(name: AppRoutes.verifyCode, page: () => const VerifyCode()),
  GetPage(name: AppRoutes.resetPassword, page: () => const ResetPassword()),
  GetPage(
      name: AppRoutes.successResetPassword,
      page: () => const SuccessResetPassword()),
  GetPage(name: AppRoutes.signupVerify, page: () => const SignupVerify()),
  GetPage(name: AppRoutes.signupSuccess, page: () => const SignupSuccess()),
];
