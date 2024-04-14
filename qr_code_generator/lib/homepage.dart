import 'package:flutter/material.dart';
import 'package:qr_code_generator/navbar.dart';
import 'package:qr_flutter/qr_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count = 0;

  void generateQRCode() {
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    String qrData = 'Random QR Code $count';

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          'QR CODE',
          style: TextStyle(fontFamily: 'Aerial'),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      drawer: const Drawer(),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(25.0),
            child: Text(
              'This code allows you to enter and leave your club, It\'s personal and non-transferable. Use it responsibly',
              style: TextStyle(color: Colors.white, fontSize: 16),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 50),
          Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white),
            ),
            child: QrImageView(
              backgroundColor: Colors.white,
              data: qrData,
              version: QrVersions.auto,
              size: 200.0,
            ),
          ),
          const SizedBox(height: 90),
          ElevatedButton(
            onPressed: generateQRCode,
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
              foregroundColor: Colors.white,
            ),
            child: const Padding(
              padding: EdgeInsets.all(12.0),
              child: Text(
                'Generate QR Code',
                style: TextStyle(fontSize: 17),
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: const MyNavigationBar(),
    );
  }
}
