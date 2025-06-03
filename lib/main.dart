import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:qrcodereader/screens/setting_screen/page1.dart';
import 'package:qrcodereader/view_modal/setting_screen_logic/page1_toogle_logic.dart';
// import 'package:qrcodereader/screens/splash_screen/screen1.dart';
// import 'package:qrcodereader/screens/splash_screen/screen2.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create:(_) => Page_1_logic() ),
      ],
      child:
      ScreenUtilInit(
      designSize: const Size(428, 926),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context , child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: child,
        );
      },
      child:Page1() ,
    )
    );
  
}

    
  }


    