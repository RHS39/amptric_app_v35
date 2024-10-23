import 'package:flutter/material.dart';
import "package:amptric/style/text_style.dart";

class QrScanner extends StatefulWidget {
  const QrScanner({super.key});

  @override
  State<QrScanner> createState() => _QrScannerState();
}

class _QrScannerState extends State<QrScanner> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("This is QR Scanner", style: Tfor.label()),
      ),
    );
  }
}
