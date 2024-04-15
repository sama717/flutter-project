import 'package:authentication/Features/auth/login/view/page/login_page.dart';
import 'package:authentication/Features/auth/onboarding/view/page/onboarding_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  bool onBoarding = sharedPreferences.getBool('onboarding') ?? false;
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  MaterialApp materialApp = MaterialApp(
    home: onBoarding ? const LoginPage() : const OnBoardingPage(),
  );
  runApp(materialApp);
  FlutterNativeSplash.remove();
}
