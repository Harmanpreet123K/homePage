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
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
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

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyBYX86ydkcUxPiTX3X_XC-fMVxVcN0Eous',
    appId: '1:449724422600:web:74dc556a04570f66c588fd',
    messagingSenderId: '449724422600',
    projectId: 'fir-9d1b7',
    authDomain: 'fir-9d1b7.firebaseapp.com',
    storageBucket: 'fir-9d1b7.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD1Q3OrfKDEhQIMP1NU23WrkqK5pNt3UII',
    appId: '1:449724422600:android:0aeb672e60572e55c588fd',
    messagingSenderId: '449724422600',
    projectId: 'fir-9d1b7',
    storageBucket: 'fir-9d1b7.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB4ZfzlnjG25r_PlbjwtI-aKE1Lf9uTvI0',
    appId: '1:449724422600:ios:3f120b29baca514ac588fd',
    messagingSenderId: '449724422600',
    projectId: 'fir-9d1b7',
    storageBucket: 'fir-9d1b7.appspot.com',
    iosBundleId: 'com.example.digiprod',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyB4ZfzlnjG25r_PlbjwtI-aKE1Lf9uTvI0',
    appId: '1:449724422600:ios:3f120b29baca514ac588fd',
    messagingSenderId: '449724422600',
    projectId: 'fir-9d1b7',
    storageBucket: 'fir-9d1b7.appspot.com',
    iosBundleId: 'com.example.digiprod',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBYX86ydkcUxPiTX3X_XC-fMVxVcN0Eous',
    appId: '1:449724422600:web:b4b9070ad6043675c588fd',
    messagingSenderId: '449724422600',
    projectId: 'fir-9d1b7',
    authDomain: 'fir-9d1b7.firebaseapp.com',
    storageBucket: 'fir-9d1b7.appspot.com',
  );

}