import 'package:flutter/material.dart';
import 'package:whatsapp_clone/chat_interface.dart';
import 'package:whatsapp_clone/chats.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StaticPage()
    );
  }
}
