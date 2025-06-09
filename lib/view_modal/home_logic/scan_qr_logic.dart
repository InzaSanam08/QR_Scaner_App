// //
// import 'package:flutter/services.dart';
// import 'package:flutter/widgets.dart';
// import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
// import 'package:get/get.dart';

// class scanQrCode_logic extends ChangeNotifier {
//   String scanedResult = "";

//   scanner() async {
//     var result;
//     try {
//       result = await FlutterBarcodeScanner.scanBarcode(
//         "#ff6666",
//         "Cancel",
//         true,
//         ScanMode.QR,
//       );
//     } on PlatformException catch (e) {
//       result = "failed to get PlatForm Version.";
//       Get.snackbar("Error Occurred", e.code);
//     } catch (e) {
//       Get.snackbar("Error Occurred", e.toString());
//     }
//     // if (!mounted) return;
//   }
// String scanedResult = result;

// notifyListeners();
// }







import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:flutter/widgets.dart';

class ScanQrCodeLogic extends ChangeNotifier {
  String scannedResult = '';

  Future<void> scanQrCode() async {
    try {
      final res = await FlutterBarcodeScanner.scanBarcode(
        "#ff6666",   // overlay color
        "Cancel",    // cancel button
        true,        // flash icon
        ScanMode.QR, // QR mode
      );
      scannedResult = res != '-1' ? res : 'Scan cancelled';
    } on PlatformException catch (e) {
      scannedResult = 'Error: ${e.message}';
    } catch (e) {
      scannedResult = 'Unexpected error: $e';
    }
    notifyListeners();
  }
}
