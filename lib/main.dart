import 'package:SnakeHost/UI Design Folder/all_pages.dart';
import 'package:SnakeHost/Register/sign_in_page.dart';
import 'package:flutter/material.dart';
import 'UI Design Folder/homepage.dart';
import 'Register/sign_up_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: "Snake Game",
      debugShowCheckedModeBanner: false,
      initialRoute: "homepage",
      routes:
      {
        'homepage': (context) => const HomePage(),
        'all pages' : (context) => const AllPagesClass(),
        'login': (context) => const SignInClass(),
        'signup': (context) => const SignUpClass(),
      },
      //home: HomePage(),
    );
  }
}
