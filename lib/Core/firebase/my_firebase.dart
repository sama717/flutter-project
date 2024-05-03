import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:flutter/material.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';

import '../../firebase_options.dart';

class MyFirebase {
  Future<void> init () async {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    var FirbaseCrashlytics;
    FlutterError.onError = FirbaseCrashlytics.instance.recordFlutterFatalError;
  }
  Future<String> init () async {
   final FirebaseRemoteConfig remoteConfig =FirebaseRemoteConfig.instance;
   await remoteConfig.fetchAndActivate();
   await remoteConfig.setConfigSettings(
     RemoteConfigSettings(
       fetchTimeout: const Duration(minutes:1), minimumFetchInterval: const Duration(seconds:1),
     ),
   );
    var value =remoteConfig.getString("url");
  }
}
