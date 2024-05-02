import 'package:authentication/Features/auth/login/view/page/login_page.dart';
import 'package:authentication/Features/auth/onboarding/view/page/onboarding_page.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
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
    builder: DevicePreview.appBuilder,
    useInheritedMediaQuery: true,
    home: onBoarding ? const LoginPage() : const OnBoardingPage(),
  );
  runApp(DevicePreview(
    enabled: false,
    builder: (context) => materialApp, // Wrap your app
  ),);
  FlutterNativeSplash.remove();


}
