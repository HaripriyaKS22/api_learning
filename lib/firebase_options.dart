// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyD1rofdshzQqYLBibQxsljGRShP7GpZXW8',
    appId: '1:590634456054:web:1db663ec12c0b3691a6dd7',
    messagingSenderId: '590634456054',
    projectId: 'apilearning-a4509',
    authDomain: 'apilearning-a4509.firebaseapp.com',
    databaseURL: 'https://apilearning-a4509-default-rtdb.firebaseio.com',
    storageBucket: 'apilearning-a4509.appspot.com',
    measurementId: 'G-BS20G2K7P0',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB9OYyVjPT9a2Jc9fEdaDovxGGAktFPBEo',
    appId: '1:590634456054:android:98f496a15c97fac61a6dd7',
    messagingSenderId: '590634456054',
    projectId: 'apilearning-a4509',
    databaseURL: 'https://apilearning-a4509-default-rtdb.firebaseio.com',
    storageBucket: 'apilearning-a4509.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCLmJStOS0yeFWeeM5rkBNLoDYMmcIvuSY',
    appId: '1:590634456054:ios:0ab3f560f85c25a21a6dd7',
    messagingSenderId: '590634456054',
    projectId: 'apilearning-a4509',
    databaseURL: 'https://apilearning-a4509-default-rtdb.firebaseio.com',
    storageBucket: 'apilearning-a4509.appspot.com',
    iosBundleId: 'com.example.apilearning',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCLmJStOS0yeFWeeM5rkBNLoDYMmcIvuSY',
    appId: '1:590634456054:ios:5c4f52ad78e382ed1a6dd7',
    messagingSenderId: '590634456054',
    projectId: 'apilearning-a4509',
    databaseURL: 'https://apilearning-a4509-default-rtdb.firebaseio.com',
    storageBucket: 'apilearning-a4509.appspot.com',
    iosBundleId: 'com.example.apilearning.RunnerTests',
  );
}
