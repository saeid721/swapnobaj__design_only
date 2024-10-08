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
    apiKey: 'AIzaSyBh88cezarSF6tiFp4rbunUy_BW2ELsXTY',
    appId: '1:71966178159:web:7044859674dad7594c869a',
    messagingSenderId: '71966178159',
    projectId: 'swopnobaj-f1e1e',
    authDomain: 'swopnobaj-f1e1e.firebaseapp.com',
    storageBucket: 'swopnobaj-f1e1e.appspot.com',
    measurementId: 'G-33012SKXG0',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC40T0p5p1WL_XkAtprLiE0YYAXTIWRbDI',
    appId: '1:71966178159:android:b8514ee9d7d863694c869a',
    messagingSenderId: '71966178159',
    projectId: 'swopnobaj-f1e1e',
    storageBucket: 'swopnobaj-f1e1e.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAxo6mYFc7zPN8clhKI8FGbAfC0ywc2ZKk',
    appId: '1:71966178159:ios:edf1cb88898ce3994c869a',
    messagingSenderId: '71966178159',
    projectId: 'swopnobaj-f1e1e',
    storageBucket: 'swopnobaj-f1e1e.appspot.com',
    iosBundleId: 'com.example.swapnabaj',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAxo6mYFc7zPN8clhKI8FGbAfC0ywc2ZKk',
    appId: '1:71966178159:ios:edf1cb88898ce3994c869a',
    messagingSenderId: '71966178159',
    projectId: 'swopnobaj-f1e1e',
    storageBucket: 'swopnobaj-f1e1e.appspot.com',
    iosBundleId: 'com.example.swapnabaj',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBh88cezarSF6tiFp4rbunUy_BW2ELsXTY',
    appId: '1:71966178159:web:866eebd1a3136bb34c869a',
    messagingSenderId: '71966178159',
    projectId: 'swopnobaj-f1e1e',
    authDomain: 'swopnobaj-f1e1e.firebaseapp.com',
    storageBucket: 'swopnobaj-f1e1e.appspot.com',
    measurementId: 'G-R5N466S79F',
  );
}
