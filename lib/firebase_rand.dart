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
    apiKey: 'AIzaSyCGWHofqo2RMwmVAowU_grGicAR-1xj9L4',
    appId: '1:593237884593:web:1df3bbe98abd36dff1ec90',
    messagingSenderId: '593237884593',
    projectId: 'ecommerce-app-proj2',
    authDomain: 'ecommerce-app-proj2.firebaseapp.com',
    databaseURL: 'https://ecommerce-app-proj2-default-rtdb.europe-west1.firebasedatabase.app',
    storageBucket: 'ecommerce-app-proj2.appspot.com',
    measurementId: 'G-M4H0RC5TB5',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCiUQLqlJ7NOJmCTgF4q3ptKUWi4LC-a5o',
    appId: '1:593237884593:android:951a237ec2c4f070f1ec90',
    messagingSenderId: '593237884593',
    projectId: 'ecommerce-app-proj2',
    databaseURL: 'https://ecommerce-app-proj2-default-rtdb.europe-west1.firebasedatabase.app',
    storageBucket: 'ecommerce-app-proj2.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDmovSyfIU4_vy_NGqzXXnJh77uPVE4-0k',
    appId: '1:593237884593:ios:10803192d48d5e2ef1ec90',
    messagingSenderId: '593237884593',
    projectId: 'ecommerce-app-proj2',
    databaseURL: 'https://ecommerce-app-proj2-default-rtdb.europe-west1.firebasedatabase.app',
    storageBucket: 'ecommerce-app-proj2.appspot.com',
    iosClientId: '593237884593-oesm1svvhtf9ihg41822s1ceu86sd320.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterApplication1',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDmovSyfIU4_vy_NGqzXXnJh77uPVE4-0k',
    appId: '1:593237884593:ios:10803192d48d5e2ef1ec90',
    messagingSenderId: '593237884593',
    projectId: 'ecommerce-app-proj2',
    databaseURL: 'https://ecommerce-app-proj2-default-rtdb.europe-west1.firebasedatabase.app',
    storageBucket: 'ecommerce-app-proj2.appspot.com',
    iosClientId: '593237884593-oesm1svvhtf9ihg41822s1ceu86sd320.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterApplication1',
  );
}