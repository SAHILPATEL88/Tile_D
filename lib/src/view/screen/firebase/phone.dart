// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class User {
//   String email;
//   String password;
//
//   User({required this.email, required this.password});
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Home(),
//     );
//   }
// }
//
// class Home extends StatefulWidget {
//   @override
//   _HomeState createState() => _HomeState();
// }
//
// class _HomeState extends State<Home> {
//   final TextEditingController emailController = TextEditingController();
//   final TextEditingController passwordController = TextEditingController();
//
//   List<User> users = [
//     User(email: 'user1@example.com', password: 'password1'),
//     User(email: 'user2@example.com', password: 'password2'),
//   ];
//
//   Future<void> _loginWithEmailAndPassword() async {
//     String email = emailController.text.trim();
//     String password = passwordController.text.trim();
//
//     User? user = users.firstWhere((u) => u.email == email && u.password == password, orElse: () => nothing);
//
//     if (user != null) {
//       // Successfully logged in
//       print('User logged in: $email');
//     } else {
//       // Handle login errors
//       print('Failed to log in: Invalid credentials');
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(
//           content: Text('Failed to log in: Invalid credentials'),
//           backgroundColor: Colors.red,
//         ),
//       );
//     }
//   }
//
//   Future<void> _signupWithEmailAndPassword() async {
//     String email = emailController.text.trim();
//     String password = passwordController.text.trim();
//
//     if (email.isNotEmpty && password.isNotEmpty) {
//       // Check if the user already exists
//       if (users.any((u) => u.email == email)) {
//         print('User already exists');
//         ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(
//             content: Text('User already exists'),
//             backgroundColor: Colors.red,
//           ),
//         );
//       } else {
//         // Register the new user
//         users.add(User(email: email, password: password));
//         print('User registered: $email');
//       }
//     } else {
//       print('Invalid email or password');
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(
//           content: Text('Invalid email or password'),
//           backgroundColor: Colors.red,
//         ),
//       );
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: SingleChildScrollView(
//         child: Container(
//           child: Column(
//             children: <Widget>[
//               Container(
//                 height: 400,
//                 decoration: BoxDecoration(
//                   image: DecorationImage(
//                     image: AssetImage('assets/images/background.png'),
//                     fit: BoxFit.fill,
//                   ),
//                 ),
//                 child: Stack(
//                   children: <Widget>[
//                     Positioned(
//                       child: Container(
//                         margin: EdgeInsets.only(top: 50),
//                         child: Center(
//                           child: Text(
//                             "Login",
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontSize: 40,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               Padding(
//                 padding: EdgeInsets.all(30.0),
//                 child: Column(
//                   children: <Widget>[
//                     Container(
//                       padding: EdgeInsets.all(5),
//                       decoration: BoxDecoration(
//                         color: Colors.white,
//                         borderRadius: BorderRadius.circular(10),
//                         border: Border.all(
//                           color: Color.fromRGBO(143, 148, 251, 1),
//                         ),
//                         boxShadow: [
//                           BoxShadow(
//                             color: Color.fromRGBO(143, 148, 251, .2),
//                             blurRadius: 20.0,
//                             offset: Offset(0, 10),
//                           ),
//                         ],
//                       ),
//                       child: Column(
//                         children: <Widget>[
//                           Container(
//                             padding: EdgeInsets.all(8.0),
//                             decoration: BoxDecoration(
//                               border: Border(
//                                 bottom: BorderSide(
//                                   color: Color.fromRGBO(143, 148, 251, 1),
//                                 ),
//                               ),
//                             ),
//                             child: TextField(
//                               controller: emailController,
//                               decoration: InputDecoration(
//                                 border: InputBorder.none,
//                                 hintText: "Email or Phone number",
//                                 hintStyle: TextStyle(
//                                   color: Colors.grey[700],
//                                 ),
//                               ),
//                             ),
//                           ),
//                           Container(
//                             padding: EdgeInsets.all(8.0),
//                             child: TextField(
//                               controller: passwordController,
//                               obscureText: true,
//                               decoration: InputDecoration(
//                                 border: InputBorder.none,
//                                 hintText: "Password",
//                                 hintStyle: TextStyle(
//                                   color: Colors.grey[700],
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     SizedBox(
//                       height: 30,
//                     ),
//                     Container(
//                       height: 50,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(10),
//                         gradient: LinearGradient(
//                           colors: [
//                             Color.fromRGBO(143, 148, 251, 1),
//                             Color.fromRGBO(143, 148, 251, .6),
//                           ],
//                         ),
//                       ),
//                       child: Center(
//                         child: TextButton(
//                           onPressed: _loginWithEmailAndPassword,
//                           child: Text(
//                             "Login",
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                     SizedBox(
//                       height: 20,
//                     ),
//                     Container(
//                       height: 50,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(10),
//                         border: Border.all(
//                           color: Color.fromRGBO(143, 148, 251, 1),
//                         ),
//                       ),
//                       child: Center(
//                         child: TextButton(
//                           onPressed: _signupWithEmailAndPassword,
//                           child: Text(
//                             "Sign Up",
//                             style: TextStyle(
//                               color: Color.fromRGBO(143, 148, 251, 1),
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                     SizedBox(
//                       height: 50,
//                     ),
//                     Text(
//                       "Forgot Password?",
//                       style: TextStyle(
//                         color: Color.fromRGBO(143, 148, 251, 1),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
