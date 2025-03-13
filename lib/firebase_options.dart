// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for ios - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        return windows;
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAh5t3Ie34g2NVxUYgQFSuP3RrCUswNUWs',
    appId: '1:465295343320:android:556210a4b2cfd5d020a1ad',
    messagingSenderId: '465295343320',
    projectId: 'ecom-91f2c',
    storageBucket: 'ecom-91f2c.firebasestorage.app',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAqx_v_AASWgOTO-AYl4rJt1PDBA5DgZMs',
    appId: '1:465295343320:web:741b60f0021289ee20a1ad',
    messagingSenderId: '465295343320',
    projectId: 'ecom-91f2c',
    authDomain: 'ecom-91f2c.firebaseapp.com',
    storageBucket: 'ecom-91f2c.firebasestorage.app',
  );
}
