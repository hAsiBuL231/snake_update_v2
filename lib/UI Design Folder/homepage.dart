import 'package:SnakeHost/UI%20Design%20Folder/all_pages.dart';
import 'package:SnakeHost/game_file/touch_blocked.dart';
import 'package:flutter/material.dart';
import '../Settings Folder/drawer.dart';
import '../game_file/touch_open.dart';
import '../globals.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/background.png"), fit: BoxFit.fill)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        drawer: const Func(),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
            title: const Text("Flutter Snake Game"),
            centerTitle: false,
            shape: const RoundedRectangleBorder(
                side: BorderSide.none,
                borderRadius: BorderRadius.horizontal(
                    left: Radius.circular(25), right: Radius.circular(25))),
            leading: IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                    return const Func();
                  }));
                }),
            actions: <Widget>[
              IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const AllPagesClass(),
                        ));
                  },
                  icon: const Icon(Icons.list_alt)),
              PopupMenuButton(itemBuilder: (BuildContext context) {
                return [const PopupMenuItem(child: Text("hello"))];
              })
            ]),
        body: Container(
          child: Column(children: <Widget>[
            Padding(
                padding: const EdgeInsets.only(left: 12, right: 4, top: 30),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(200.0),
                    child: Image.asset('images/snake.png',
                        width: 120.0, height: 120.0, fit: BoxFit.fill))),
            const Padding(
                padding: EdgeInsets.fromLTRB(15, 15, 15, 100),
                child: Text("Welcome to \nSnakeHost",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'Raleway',
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black))),
            // ignore: deprecated_member_use
            Center(
                // ignore: deprecated_member_use
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (BuildContext context) {
                        if (gBox == 'Opened') {
                          return const GamePageOpen();
                        } else {
                          return const GamePageClosed();
                        }
                      }));
                    },
                    child: Container(
                        padding: const EdgeInsets.all(20.0),
                        color: Colors.black,
                        child: const Text("Start Game",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'GideonRoman',
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold)))))
          ]),
        ),
        floatingActionButton: const Icon(Icons.account_circle),
      ),
    );
  }
}
