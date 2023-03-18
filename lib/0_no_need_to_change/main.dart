import 'package:flutter/material.dart';
import '../0_homepage.dart';
import '../Register/sign_up_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Snake Game",
      debugShowCheckedModeBanner: false,
      //initialRoute: "SignUpClass()",
      //home: HomePage(),
      home: SignUpClass(),
    );
  }
}
