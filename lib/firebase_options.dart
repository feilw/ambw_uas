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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyAbV4qXraJWENFm2axOeCrYYmY_2-voUYE',
    appId: '1:800552477497:web:2726fdf080a0cfcdcafee8',
    messagingSenderId: '800552477497',
    projectId: 'ambwuas-c244a',
    authDomain: 'ambwuas-c244a.firebaseapp.com',
    storageBucket: 'ambwuas-c244a.appspot.com',
    measurementId: 'G-6F3C9B6BCC',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB7MzrP_beOU5fpTlFo75FqU8SyhU1mbMs',
    appId: '1:800552477497:android:bcc7d85711194e48cafee8',
    messagingSenderId: '800552477497',
    projectId: 'ambwuas-c244a',
    storageBucket: 'ambwuas-c244a.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCoDpjZCktxJkPw13woeVibc8Bhae7RZwg',
    appId: '1:800552477497:ios:f72f0d6474484e9bcafee8',
    messagingSenderId: '800552477497',
    projectId: 'ambwuas-c244a',
    storageBucket: 'ambwuas-c244a.appspot.com',
    iosClientId: '800552477497-q6o4jvqo67bn84fb5eglj7e95p4r6q7k.apps.googleusercontent.com',
    iosBundleId: 'com.example.uas',
  );
}
