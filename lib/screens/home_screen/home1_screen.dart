import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:qrcodereader/screens/home_screen/widgets/custum_button.dart';
import 'package:qrcodereader/utils/appcolors/app_colors.dart';

class QrScannerScreen extends StatefulWidget {
  const QrScannerScreen({Key? key}) : super(key: key);

  @override
  State<QrScannerScreen> createState() => _QrScannerScreenState();
}

class _QrScannerScreenState extends State<QrScannerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.BackgroundColor,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(height: 150.h),
              Container(
                height: 200.h,
                width: 200.w,
                child: SvgPicture.asset(
                  "lib/utils/assets/splash_logo.svg",
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(height: 180.h),
              Custum_button(button_name: 'Scan QR Code'),
              SizedBox(height: 20.w),
              Custum_button(button_name: 'Generate QR Code'),
            ],
          ),
        ),
      ),
    );
  }
}








































































// import 'dart:ui';

// import 'package:camera/camera.dart';
// import 'package:flutter/material.dart';

// class Home1_screen extends StatefulWidget {
//   const Home1_screen({super.key});

//   @override
//   State<Home1_screen> createState() => _Home1_screenState();
// }

// class _Home1_screenState extends State<Home1_screen> {
//   late CameraController _cameraController;
//   bool _isCameraInitialized = false;

//   @override
//   void initState() {
//     super.initState();
//     _initCamera();
//   }

//   Future<void> _initCamera() async {
//     final cameras = await availableCameras();
//     _cameraController = CameraController(cameras[0], ResolutionPreset.medium);
//     await _cameraController.initialize();
//     setState(() {
//       _isCameraInitialized = true;
//     });
//   }

//   @override
//   void dispose() {
//     _cameraController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.transparent,
//       body: _isCameraInitialized
//           ? Stack(
//               children: [
//                 // 🔴 Camera Preview
//                 CameraPreview(_cameraController),

//                 // 🔵 Blur Effect Overlay
//                 BackdropFilter(
//                   filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
//                   child: Container(
//                     color: Colors.black.withOpacity(0.2), // Semi-transparent
//                   ),
//                 ),

//                 // 🟢 Top Button Bar
//                 Positioned(
//                   top: 40,
//                   left: 20,
//                   right: 20,
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       ElevatedButton(onPressed: () {}, child: Text('Top Left')),
//                       ElevatedButton(onPressed: () {}, child: Text('Top Right')),
//                     ],
//                   ),
//                 ),

//                 // 🟠 Bottom Button Bar
//                 Positioned(
//                   bottom: 40,
//                   left: 20,
//                   right: 20,
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceAround,
//                     children: [
//                       IconButton(
//                         icon: Icon(Icons.flash_on, color: Colors.white),
//                         onPressed: () {},
//                       ),
//                       IconButton(
//                         icon: Icon(Icons.camera, color: Colors.white),
//                         onPressed: () {},
//                       ),
//                       IconButton(
//                         icon: Icon(Icons.settings, color: Colors.white),
//                         onPressed: () {},
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             )
//           : Center(child: CircularProgressIndicator()),
//     );
//   }
// }












































































// import 'dart:ui';

// import 'package:camera/camera.dart';
// import 'package:flutter/material.dart';

// class Home1_screen extends StatefulWidget {
//   const Home1_screen({super.key});

//   @override
//   State<Home1_screen> createState() => _Home1_screenState();
// }

// class _Home1_screenState extends State<Home1_screen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//     backgroundColor: Colors.transparent,
//     body: _isCameraInitialized
//         ? Stack(
//             children: [
//               // 🔴 Camera Preview
//               CameraPreview(_cameraController),

//               // 🔵 Blur Effect Overlay
//               BackdropFilter(
//                 filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
//                 child: Container(
//                   color: Colors.black.withOpacity(0.2), // Semi-transparent
//                 ),
//               ),

//               // 🟢 Top Button Bar
//               Positioned(
//                 top: 40,
//                 left: 20,
//                 right: 20,
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     ElevatedButton(onPressed: () {}, child: Text('Top Left')),
//                     ElevatedButton(onPressed: () {}, child: Text('Top Right')),
//                   ],
//                 ),
//               ),

//               // 🟠 Bottom Button Bar
//               Positioned(
//                 bottom: 40,
//                 left: 20,
//                 right: 20,
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceAround,
//                   children: [
//                     IconButton(
//                       icon: Icon(Icons.flash_on, color: Colors.white),
//                       onPressed: () {},
//                     ),
//                     IconButton(
//                       icon: Icon(Icons.camera, color: Colors.white),
//                       onPressed: () {},
//                     ),
//                     IconButton(
//                       icon: Icon(Icons.settings, color: Colors.white),
//                       onPressed: () {},
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           )
//         : Center(child: CircularProgressIndicator()),
//   );
//   }
// }
