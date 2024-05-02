import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:flutter/material.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';

class MyFirebase {
  Future<void> init () async {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    FlutterError.onError = FirbaseCrashlytics.instance.recordFlutterFatalError;
  }
  Future<String> init () async {
   final FirebaseRemoteConfig remoteConfig =FirebaseRemoteConfig.instance;
   await remoteconfig.fetchAndActivate();
   await remoteconfig.setConfigSettings(
     RemoteConfigSettings(
       fetchTimeout: const Duration(minutes:1), minimumFetchInterval: const Duration(seconds:1),
     ),
   );
   value =remoteconfig.getString("url");
  }
}