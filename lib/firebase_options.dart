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
    apiKey: 'AIzaSyAWBTXBQvRhoJxb8SXvkv9MSX_a9PiU8JA',
    appId: '1:711613143742:web:54a7a891db7c9b9bba5cef',
    messagingSenderId: '711613143742',
    projectId: 'quiz-app-4a98f',
    authDomain: 'quiz-app-4a98f.firebaseapp.com',
    databaseURL: 'https://quiz-app-4a98f-default-rtdb.firebaseio.com',
    storageBucket: 'quiz-app-4a98f.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB_B4N1eLp3S4uGagFfraemqC5KzKwG-k4',
    appId: '1:711613143742:android:8e87ad26af19b87aba5cef',
    messagingSenderId: '711613143742',
    projectId: 'quiz-app-4a98f',
    databaseURL: 'https://quiz-app-4a98f-default-rtdb.firebaseio.com',
    storageBucket: 'quiz-app-4a98f.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD-2TypOI_20Ifb94udYuBLo170IHT14fs',
    appId: '1:711613143742:ios:b63bc19336e04e54ba5cef',
    messagingSenderId: '711613143742',
    projectId: 'quiz-app-4a98f',
    databaseURL: 'https://quiz-app-4a98f-default-rtdb.firebaseio.com',
    storageBucket: 'quiz-app-4a98f.appspot.com',
    iosClientId: '711613143742-42pn6hedkivr8mnpn55vo7hflj49hck2.apps.googleusercontent.com',
    iosBundleId: 'com.example.quizFlutter',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyD-2TypOI_20Ifb94udYuBLo170IHT14fs',
    appId: '1:711613143742:ios:b914abeca06ebc3bba5cef',
    messagingSenderId: '711613143742',
    projectId: 'quiz-app-4a98f',
    databaseURL: 'https://quiz-app-4a98f-default-rtdb.firebaseio.com',
    storageBucket: 'quiz-app-4a98f.appspot.com',
    iosClientId: '711613143742-bcoqhef9dh37dg6kdqdf56bmbuqp8j2i.apps.googleusercontent.com',
    iosBundleId: 'com.example.quizFlutter.RunnerTests',
  );
}