//
//
// import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
// import 'package:flutter/foundation.dart'
//     show defaultTargetPlatform, kIsWeb, TargetPlatform;
//
// /// Default [FirebaseOptions] for use with your Firebase apps.
// ///
// /// Example:
// /// ```dart
// /// import 'firebase_options.dart';
// /// // ...
// /// await Firebase.initializeApp(
// ///   options: DefaultFirebaseOptions.currentPlatform,
// /// );
// /// ```
// class DefaultFirebaseOptions {
//   static FirebaseOptions get currentPlatform {
//     if (kIsWeb) {
//       return web;
//     }
//     switch (defaultTargetPlatform) {
//       case TargetPlatform.android:
//         return android;
//       case TargetPlatform.iOS:
//         return ios;
//       case TargetPlatform.macOS:
//         return macos;
//       case TargetPlatform.windows:
//         throw UnsupportedError(
//           'DefaultFirebaseOptions have not been configured for windows - '
//           'you can reconfigure this by running the FlutterFire CLI again.',
//         );
//       case TargetPlatform.linux:
//         throw UnsupportedError(
//           'DefaultFirebaseOptions have not been configured for linux - '
//           'you can reconfigure this by running the FlutterFire CLI again.',
//         );
//       default:
//         throw UnsupportedError(
//           'DefaultFirebaseOptions are not supported for this platform.',
//         );
//     }
//   }
//
//   static const FirebaseOptions web = FirebaseOptions(
//       apiKey: "AIzaSyDhsoNv8setBSQxyr-RhzzHTKlU4dsBCyQ",
//       authDomain: "tiled-838d8.firebaseapp.com",
//       databaseURL: "https://tiled-838d8-default-rtdb.asia-southeast1.firebasedatabase.app",
//       projectId: "tiled-838d8",
//       storageBucket: "tiled-838d8.appspot.com",
//       messagingSenderId: "434402846974",
//       appId: "1:434402846974:web:45cc9e9f9abf9226f31daf",
//       measurementId: "G-F5FKKHL3N5"
//   );
//
//   static const FirebaseOptions android = FirebaseOptions(
//     apiKey: 'AIzaSyCJ23ovVISzW9oRvWd8NbuE2oBMO9ToOP4',
//     appId: '1:434402846974:android:62e20a8410805005f31daf',
//     messagingSenderId: '434402846974',
//     projectId: 'tiled-838d8',
//     storageBucket: 'tiled-838d8.appspot.com',
//   );
//
//   static const FirebaseOptions ios = FirebaseOptions(
//     apiKey: 'AIzaSyDrix9qckihT4UFqlp4reYtsTcdl9PBxjQ',
//     appId: '1:434402846974:ios:a1607ec1056a9742f31daf',
//     messagingSenderId: '434402846974',
//     projectId: 'tiled-838d8',
//     storageBucket: 'tiled-838d8.appspot.com',
//     iosClientId: '434402846974-9jnna5mh4vrn74pfupgsrsse81moddfr.apps.googleusercontent.com',
//     iosBundleId: 'com.example.sp',
//   );
//
//   static const FirebaseOptions macos = FirebaseOptions(
//     apiKey: 'AIzaSyDrix9qckihT4UFqlp4reYtsTcdl9PBxjQ',
//     appId: '1:434402846974:ios:699032e013028715f31daf',
//     messagingSenderId: '434402846974',
//     projectId: 'tiled-838d8',
//     storageBucket: 'tiled-838d8.appspot.com',
//     iosClientId: '434402846974-fb7n2qumvo2amqh0rcenuc1rt22s05lk.apps.googleusercontent.com',
//     iosBundleId: 'com.example.sp.RunnerTests',
//   );
// }
