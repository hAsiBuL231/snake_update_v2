import 'package:SnakeHost/Register/sign_in_page.dart';
import 'package:flutter/material.dart';

class SignUpClass extends StatefulWidget {
  const SignUpClass({Key? key}) : super(key: key);

  @override
  State<SignUpClass> createState() => _SignUpClassState();
}

class _SignUpClassState extends State<SignUpClass> {
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
                padding: const EdgeInsets.only(top: 120),
                child: const Text("Create New\nAccount",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.black,
                      fontFamily: "Raleway",
                      height: 1.2,
                    )),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const SignInClass();
                  }));
                },
                style: const ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll(Colors.lightBlueAccent)),
                child: const Text("Already Registered? Login",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'OpenSans',
                    )),
              ),
              Container(
                padding: const EdgeInsets.only(top: 20, left: 35, right: 35),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                          fillColor: Colors.transparent,
                          filled: true,
                          hintText: 'Name',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          )),
                    ),
                    const SizedBox(height: 20),
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
                    const SizedBox(height: 70),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text(
                          "Sign Up",
                          style: TextStyle(
                              color: Colors.blue,
                              fontSize: 28,
                              fontFamily: "Raleway"),
                        ),
                        CircleAvatar(
                          radius: 28,
                          child: IconButton(
                            onPressed: () => Null,
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
