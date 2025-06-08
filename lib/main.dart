import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:qrcodereader/screens/home_screen/home1_screen.dart';
import 'package:qrcodereader/screens/setting_screen/setting1.dart';
import 'package:qrcodereader/screens/splash_screen/screen1.dart';
import 'package:qrcodereader/screens/splash_screen/screen2.dart';
import 'package:qrcodereader/view_modal/home_logic/home_screen_logic.dart';
import 'package:qrcodereader/view_modal/setting_screen_logic/page1_toogle_logic.dart';
import 'package:qrcodereader/view_modal/splash_screen_logic/splash1_logic.dart';
import 'package:qrcodereader/view_modal/splash_screen_logic/splash2_screen_logic.dart';
// import 'package:qrcodereader/screens/splash_screen/screen1.dart';
// import 'package:qrcodereader/screens/splash_screen/screen2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [  
        ChangeNotifierProvider(create: (_) => Splash_1_logic()),
         ChangeNotifierProvider(create: (_) =>Splash_2_logic()),
           ChangeNotifierProvider(create: (_) =>Page_1_logic()),
            ChangeNotifierProvider(create: (_) => CameraProvider()),


 
      ],
      child: ScreenUtilInit(
        designSize: const Size(428, 926),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: child,

            initialRoute: '/',
            routes: {
              '/screen1': (context) => Screen1(),
              '/screen2': (context) => Screen2(),
              '/setting1':(context) => Setting1_Screen()
            
            },
          );
        },
        child: QrScannerScreen()
      ),
    );
  }
}
