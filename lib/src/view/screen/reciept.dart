import 'dart:convert';
import 'package:Tile_App/src/view/screen/payment.dart';
import 'package:flutter/material.dart';

import 'login.dart';

class ReceiptPage extends StatelessWidget {
  final String receipt;

  const ReceiptPage({Key? key, required this.receipt}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Decoding the JSON string to a Map
    Map<String, dynamic> receiptMap;
    try {
      receiptMap = jsonDecode(receipt);
    } catch (e) {
      return Scaffold(
        body: Center(
          child: Text("Error decoding receipt data"),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Receipt"),
        backgroundColor: Colors.teal, // Change the app bar color
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Receipt Details",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.teal), // Change the text color
            ),
            SizedBox(height: 16),
            Text(
              "Date: ${DateTime.now()}",
              style: TextStyle(fontSize: 18, color: Colors.grey), // Change the text color
            ),
            SizedBox(height: 8),
            Text(
              "Items:",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.teal), // Change the text color
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.teal), // Add a border
                borderRadius: BorderRadius.circular(8.0), // Add border radius
              ),
              padding: EdgeInsets.all(8.0),
              child: Column(
                children: [
                  for (var item in receiptMap['items']) ...[
                    SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "${item['name']} (${item['size']}) x ${item['quantity']}",
                          style: TextStyle(fontSize: 16),
                        ),
                        Text(
                          "\$${item['price']}",
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ],
                ],
              ),
            ),
            SizedBox(height: 16),
            Text(
              "Total: \$${receiptMap['total']}",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.teal), // Change the text color
            ),

            // Pay Now button
            SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                // Navigate to the payment page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>LoginPage()),
                );
              },
              child: Text("Pay Now"),
              style: ElevatedButton.styleFrom(
                primary: Colors.teal, // Change the button color
                padding: EdgeInsets.all(16), // Add padding
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8), // Add border radius
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
