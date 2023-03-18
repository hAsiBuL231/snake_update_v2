import 'package:SnakeHost/Register/forget_pass_page.dart';
import 'package:flutter/material.dart';

class SignInClass extends StatefulWidget {
  const SignInClass({Key? key}) : super(key: key);

  @override
  State<SignInClass> createState() => _SignInClassState();
}

class _SignInClassState extends State<SignInClass> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/login.png"), fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(top: 150),
                child: const Text("Welcome Back!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 36,
                      color: Colors.black,
                      fontFamily: "Raleway",
                      height: 1.2,
                    )),
              ),
              Container(
                padding: const EdgeInsets.only(top: 5),
                child: const Text("Login",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 36,
                      color: Colors.black,
                      fontFamily: "Raleway",
                      height: 1.2,
                    )),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const PassResetClass();
                  }));
                },
                style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.lightBlueAccent)),
                child: const Text("Forgot Password?",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'OpenSans',
                    )),
              ),
              Container(
                padding: const EdgeInsets.only(top: 50, left: 35, right: 35),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                          hintText: 'Email',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          )),
                    ),
                    const SizedBox(height: 20),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: 'Password',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          )),
                    ),
                    const SizedBox(height: 100),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text(
                          "Sign In",
                          style: TextStyle(
                              color: Colors.blue,
                              fontSize: 28,
                              fontFamily: "Raleway"),
                        ),
                        CircleAvatar(
                          radius: 28,
                          child: IconButton(
                            onPressed: () {

                            },
                            icon: const Icon(Icons.arrow_forward),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
