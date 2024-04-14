import 'package:authentication/Features/auth/registration/view/page/registration_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() {
   WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  MaterialApp materialApp = const MaterialApp(
    home: RegistrationPage(),
  );
  runApp(materialApp);
  FlutterNativeSplash.remove();
}
