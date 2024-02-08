import 'package:flutter/material.dart';
import 'package:pretty_qr_code/pretty_qr_code.dart';
// import 'package:path_provider/path_provider.dart';

class GenerateCodePage extends StatefulWidget {
  const GenerateCodePage({super.key});

  @override
  State<GenerateCodePage> createState() => _GenerateCodePageState();
}

class _GenerateCodePageState extends State<GenerateCodePage> {
  String? qrData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('QR Code Generator',
            style: TextStyle(color: Colors.white)),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.popAndPushNamed(context, "/splash");
            },
            icon: const Icon(
              Icons.add_to_home_screen,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: Text('Generate The QR',
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.w600)),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10, left: 10),
              child: TextField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter a website name',
                    hintStyle: TextStyle(color: Colors.black),
                    contentPadding: EdgeInsets.symmetric(horizontal: 10)),
                style: const TextStyle(color: Colors.black),
                onSubmitted: (value) {
                  setState(() {
                    qrData = value;
                  });
                },
              ),
            ),
            if (qrData != null) PrettyQrView.data(data: qrData!),
            // ElevatedButton(
            //   onPressed: _downloadQrCode,
            //   child: Text('Download QR Code'),
            // ),
          ],
        ),
      ),
    );
  }
}
