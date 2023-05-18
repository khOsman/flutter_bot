import 'package:flutter/material.dart';
import 'package:flutter_bot/chat_srceen.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
// Entry Point
void main() async {
  await dotenv.load(fileName: ".env");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Disable debug banner
      debugShowCheckedModeBanner: false,
      // set title name
      title: 'ChatGPT App',
      // select theme
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      // Here we are calling a Screen named ChatScreen
      home: ChatScreen(),
    );
  }
}
