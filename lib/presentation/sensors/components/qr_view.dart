import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class MQrView extends StatefulWidget {
  const MQrView({super.key});

  @override
  State<MQrView> createState() => _MQrViewState();
}

class _MQrViewState extends State<MQrView> {
  final qrKey = GlobalKey(debugLabel: 'QR');
  QRViewController? qrController;

  @override
  void dispose() {
    qrController?.dispose();
    super.dispose();
  }

  @override
  void reassemble() {
    super.reassemble();
    if (Platform.isAndroid) {
      qrController!.pauseCamera();
    }
    qrController!.resumeCamera();
  }

  Widget buildQrView(BuildContext context) {
    return QRView(
      key: qrKey,
      onQRViewCreated: onQRViewCreated,
      overlay: QrScannerOverlayShape(
        cutOutSize: MediaQuery.of(context).size.width * 0.5,
        borderWidth: 10,
        borderLength: 20,
        borderRadius: 10,
      ),
    );
  }

  void onQRViewCreated(QRViewController controller) {
    setState(() {
      qrController = controller;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
