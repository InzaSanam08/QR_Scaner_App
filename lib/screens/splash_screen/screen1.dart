import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:qrcodereader/utils/appcolors/app_colors.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      backgroundColor:AppColors.BackgroundColor,
      body: Column(
        children: [
       SizedBox(height:263.h,),
          Center(
            child: Container(
              height: 50.h,
              width: 50.w,
              child: SvgPicture.asset(
             "lib/utils/assets/splash_logo.svg",
                fit: BoxFit.contain,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
