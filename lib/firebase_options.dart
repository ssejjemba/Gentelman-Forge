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
    apiKey: 'AIzaSyA80EgWYRMpNMUa-IblEdrhp5C-V0KDsZI',
    appId: '1:787785974265:web:35994f67f14d21e8e4fd28',
    messagingSenderId: '787785974265',
    projectId: 'forge-9fd6d',
    authDomain: 'forge-9fd6d.firebaseapp.com',
    storageBucket: 'forge-9fd6d.appspot.com',
    measurementId: 'G-BTGQSEKKPS',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAWRCu_Xc3GtOBKgyQFts7eyxu7X2xvNHU',
    appId: '1:787785974265:android:50109e6d9f09b084e4fd28',
    messagingSenderId: '787785974265',
    projectId: 'forge-9fd6d',
    storageBucket: 'forge-9fd6d.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDBsr1YEbjF_N1jVyBAQNEd2zNLWfn0u-Y',
    appId: '1:787785974265:ios:68a08edc450abfe0e4fd28',
    messagingSenderId: '787785974265',
    projectId: 'forge-9fd6d',
    storageBucket: 'forge-9fd6d.appspot.com',
    iosClientId: '787785974265-59mfq2cp6rl29ffn7lqlo4kq0cdifgkt.apps.googleusercontent.com',
    iosBundleId: 'com.dally.technologies.gentelmanForge',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDBsr1YEbjF_N1jVyBAQNEd2zNLWfn0u-Y',
    appId: '1:787785974265:ios:587df4b7010a634ce4fd28',
    messagingSenderId: '787785974265',
    projectId: 'forge-9fd6d',
    storageBucket: 'forge-9fd6d.appspot.com',
    iosClientId: '787785974265-8evetksd072pt99ll043u4js016buubl.apps.googleusercontent.com',
    iosBundleId: 'com.dally.technologies.gentelmanForge.RunnerTests',
  );
}
