import 'dart:convert';
import 'package:http/http.dart' as http;

Future<String> generateOrder() async {
  final String serverUrl = 'http:http://localhost:3000/generateOrder';
; // Replace with your server URL
  final String apiKey = 'rzp_test_V8aP6yeNRfjKnW'; // Replace with your Razorpay test API key

  try {
    final http.Response response = await http.post(
      Uri.parse(serverUrl),
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $apiKey', // Pass the API key as a bearer token for authentication
      },
      body: jsonEncode({'amount': 50000}), // Adjust the amount as needed
    );

    if (response.statusCode == 200) {
      final Map<String, dynamic> responseData = json.decode(response.body);
      final String orderId = responseData['id'];
      return orderId;
    } else {
      throw Exception('Failed to generate order ID');
    }
  } catch (error) {
    throw Exception('Error generating order ID: $error');
  }
}

// Usage example
void main() async {
  try {
    final String orderId = await generateOrder();
    print('Generated Order ID: $orderId');
  } catch (error) {
    print('Error: $error');
  }
}
