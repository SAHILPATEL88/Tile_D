import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stripe Payment Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: YourPaymentPage(),
    );
  }
}

class YourPaymentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stripe Payment Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Replace the URL with your Stripe payment link
            launchStripePaymentLink('https://buy.stripe.com/6oEeV9dVD9lebIs5kk');
          },
          child: Text('Make Payment'),
        ),
      ),
    );
  }

  Future<void> launchStripePaymentLink(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
