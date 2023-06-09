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
    apiKey: 'AIzaSyB-2vDnIby6yKnlT5eESdiMon-1bB5YL4k',
    appId: '1:811080630162:web:c8b2ef4faf4d9ebf3e4b4b',
    messagingSenderId: '811080630162',
    projectId: 'ndn-database-cobatest',
    authDomain: 'ndn-database-cobatest.firebaseapp.com',
    storageBucket: 'ndn-database-cobatest.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCQ7xcSuM92KXDSUqM2unsNijl0bmK8wXM',
    appId: '1:811080630162:android:c5ac37d04c4ab5813e4b4b',
    messagingSenderId: '811080630162',
    projectId: 'ndn-database-cobatest',
    storageBucket: 'ndn-database-cobatest.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD8tVo8ggjrn3GlAQq1Pvn4cn5T6SWed_A',
    appId: '1:811080630162:ios:05f7dcdd064aeac43e4b4b',
    messagingSenderId: '811080630162',
    projectId: 'ndn-database-cobatest',
    storageBucket: 'ndn-database-cobatest.appspot.com',
    iosClientId: '811080630162-2j44gk2sas9phmrcrcsr0d3u8bl6029q.apps.googleusercontent.com',
    iosBundleId: 'com.example.ndnDatabaseTestingDemo',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyD8tVo8ggjrn3GlAQq1Pvn4cn5T6SWed_A',
    appId: '1:811080630162:ios:05f7dcdd064aeac43e4b4b',
    messagingSenderId: '811080630162',
    projectId: 'ndn-database-cobatest',
    storageBucket: 'ndn-database-cobatest.appspot.com',
    iosClientId: '811080630162-2j44gk2sas9phmrcrcsr0d3u8bl6029q.apps.googleusercontent.com',
    iosBundleId: 'com.example.ndnDatabaseTestingDemo',
  );
}
