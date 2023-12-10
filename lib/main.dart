import 'package:Tile_App/src/view/screen/cart_screen.dart';
import 'package:Tile_App/src/view/screen/firebase/phone.dart';
import 'package:Tile_App/src/view/screen/payment.dart';
import 'package:Tile_App/src/view/screen/product_list_screen.dart';
import 'package:Tile_App/src/view/screen/splash.dart';
import 'package:flutter/material.dart';
import 'dart:ui' show PointerDeviceKind;
import 'package:Tile_App/core/app_theme.dart';
import 'package:Tile_App/src/view/screen/home_screen.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: "AIzaSyCLBMTMn38NTBL7jRacL3EHP8oG6UX0tfg",
      authDomain: "tiles-4b787.firebaseapp.com",
      databaseURL: "https://tiles-4b787-default-rtdb.firebaseio.com",
      projectId: "tiles-4b787",
      storageBucket: "tiles-4b787.appspot.com",
      messagingSenderId: "176495672402",
      appId: "1:176495672402:web:34bf218ee0c367c8ed338b",
      measurementId: "G-H97VYGF62H",
    ),
  );

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      scrollBehavior: const MaterialScrollBehavior().copyWith(
        dragDevices: {
          PointerDeviceKind.mouse,
          PointerDeviceKind.touch,
        },
      ),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      theme: AppTheme.lightAppTheme,
    );
  }
}
