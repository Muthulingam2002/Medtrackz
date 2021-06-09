import 'package:flutter/material.dart';
import 'package:flash_chat/screens/welcome_screen.dart';
import 'package:flash_chat/screens/login_screen.dart';
import 'package:flash_chat/screens/registration_screen.dart';
import 'package:flash_chat/screens/chat_screen.dart';
import 'package:flash_chat/screens/about_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flash_chat/screens/info1.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flash_chat/homepage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(FlashChat());
}

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),

      // theme: ThemeData.dark().copyWith(
      //
      //           decoration: BoxDecoration(
      //             gradient: LinearGradient(
      //               begin: Alignment.topRight,
      //               end: Alignment.bottomLeft,
      //               colors: [
      //                 Colors.blue,
      //                 Colors.red,
      //               ],
      //             )
      //           ),
      //   ),
      // ),

      initialRoute: 'welcome_screen',
      routes: {
        'welcome_screen': (context) => WelcomeScreen(),
        'login_screen': (context) => LoginScreen(),
        'registration_screen': (context) => RegistrationScreen(),
        'chat_screen': (context) => ChatScreen(),
        'about_screen': (context) => About(),
        'info_screen': (context) => InfoScreen(),
        'homepage':(context)=>Home()

      },

    );
  }
}
