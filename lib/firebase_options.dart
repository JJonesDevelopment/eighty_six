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
    apiKey: 'AIzaSyAG750o6p5PtVDCjtdGyYSs1M_1wa68goI',
    appId: '1:549976609316:web:7366b682b6a33e27bdbeb1',
    messagingSenderId: '549976609316',
    projectId: 'eightysix-b112a',
    authDomain: 'eightysix-b112a.firebaseapp.com',
    storageBucket: 'eightysix-b112a.appspot.com',
    measurementId: 'G-LFBVNC2T1B',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDR6IFcEou69keRppRotZYTza10N-gS72A',
    appId: '1:549976609316:android:699bd0a96914a1cebdbeb1',
    messagingSenderId: '549976609316',
    projectId: 'eightysix-b112a',
    storageBucket: 'eightysix-b112a.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCW8ypu1B3NwjPl7_UJsiKUMLZONkSUlDg',
    appId: '1:549976609316:ios:9cfd0976b327201ebdbeb1',
    messagingSenderId: '549976609316',
    projectId: 'eightysix-b112a',
    storageBucket: 'eightysix-b112a.appspot.com',
    iosClientId: '549976609316-c48vkabsum73idff9ie80qn565h95srm.apps.googleusercontent.com',
    iosBundleId: 'com.example.eightySix',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCW8ypu1B3NwjPl7_UJsiKUMLZONkSUlDg',
    appId: '1:549976609316:ios:9cfd0976b327201ebdbeb1',
    messagingSenderId: '549976609316',
    projectId: 'eightysix-b112a',
    storageBucket: 'eightysix-b112a.appspot.com',
    iosClientId: '549976609316-c48vkabsum73idff9ie80qn565h95srm.apps.googleusercontent.com',
    iosBundleId: 'com.example.eightySix',
  );
}