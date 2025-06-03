import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:qrcodereader/screens/setting_screen/widgets/custum_listtile.dart';
import 'package:qrcodereader/screens/setting_screen/widgets/toogle_button.dart';
import 'package:qrcodereader/utils/appcolors/app_colors.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.pageBgColor,
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 46.h, left: 40.w),
                child: Container(
                  height: 46.h,
                  width: 46.w,
                  decoration: BoxDecoration(
                    color: AppColors.BackgroundColor,
                    borderRadius: BorderRadius.circular(12.r), // responsive corner
                  ),
                  child: Icon(
                    Icons.arrow_back_ios_sharp,
                    color: AppColors.ButtonColor,
                    size: 24.h,
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 60.h, left: 40.w),
                child: Text(
                  "Settings",
                  style: TextStyle(
                    color: AppColors.ButtonColor,
                    fontSize: 26.sp,
                    fontFamily: 'Itim',
                  ),
                ),
              ),
            ],
          ),
           SizedBox(
            height: 20,
           ),
          Custum_listile(
            my_title: "Vibrate",
            my_subtitle: "Vibration when scan is done.",
            leading_image: SvgPicture.asset('assets/icons/vibrate.svg'),
            trailing_image: Toogle_button()
            
          ),
        ],
      ),
    );
  }
}
