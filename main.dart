import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MerosApp(),
    ));

class MerosApp extends StatelessWidget {
  final Uri _url = Uri.parse('https://sites.google.com/view/andijon-madaniy-meros');

  void _launchUrl() async {
    if (!await launchUrl(_url, mode: LaunchMode.externalApplication)) {
      throw 'Xatolik: $_url ochilmadi';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Andijon Madaniy Merosi"),
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.account_balance, size: 100, color: Colors.blueGrey),
            SizedBox(height: 20),
            Text(
              "Andijon Madaniy Merosi",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 40),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent,
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
              ),
              onPressed: _launchUrl,
              child: Text("KIRISH", style: TextStyle(fontSize: 20, color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
