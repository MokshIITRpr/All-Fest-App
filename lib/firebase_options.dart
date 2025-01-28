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

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyBpl2O0mhnDIQdAm_KFMc0uyRSggxZNXcc',
    appId: '1:659207330550:web:7d28879223cc7ab1bd2ad7',
    messagingSenderId: '659207330550',
    projectId: 'fest---app',
    authDomain: 'fest---app.firebaseapp.com',
    storageBucket: 'fest---app.firebasestorage.app',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBNPMqlYXF2TF_2DAnQ_ZyxH3cs5Cn4w2k',
    appId: '1:659207330550:android:a0d8930987ecf681bd2ad7',
    messagingSenderId: '659207330550',
    projectId: 'fest---app',
    storageBucket: 'fest---app.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCJkN0pRWjFVqVoRMSdeYAk2C_9aS7i3gU',
    appId: '1:659207330550:ios:d11b4cdfcf88ca50bd2ad7',
    messagingSenderId: '659207330550',
    projectId: 'fest---app',
    storageBucket: 'fest---app.firebasestorage.app',
    iosBundleId: 'com.example.festApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBpl2O0mhnDIQdAm_KFMc0uyRSggxZNXcc',
    appId: '1:659207330550:web:af13ed7461158ad7bd2ad7',
    messagingSenderId: '659207330550',
    projectId: 'fest---app',
    authDomain: 'fest---app.firebaseapp.com',
    storageBucket: 'fest---app.firebasestorage.app',
  );
}
