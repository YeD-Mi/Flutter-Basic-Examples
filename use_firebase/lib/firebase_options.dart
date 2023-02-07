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
    apiKey: 'AIzaSyBIHOzwQ6GxxcYpktJdl6AkZguDUfko-s8',
    appId: '1:336128298465:web:e4934b5fdcb9805e1cd6a0',
    messagingSenderId: '336128298465',
    projectId: 'use-firebase',
    authDomain: 'use-firebase-d6468.firebaseapp.com',
    storageBucket: 'use-firebase.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDDjdbaE22_eNgun2BzbyuTWZBicqSqINg',
    appId: '1:336128298465:android:7b47fad6caa78cbb1cd6a0',
    messagingSenderId: '336128298465',
    projectId: 'use-firebase',
    storageBucket: 'use-firebase.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBfgRlKITHeQhyiYl80TtKHdwYAINWg__I',
    appId: '1:336128298465:ios:97ee1e8fb39bd33a1cd6a0',
    messagingSenderId: '336128298465',
    projectId: 'use-firebase',
    storageBucket: 'use-firebase.appspot.com',
    iosClientId: '336128298465-ciu2krmiu0bkgtqsp4u19om4nsoqp4hv.apps.googleusercontent.com',
    iosBundleId: 'com.example.useFirebase',
  );
}