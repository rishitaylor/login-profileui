// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/profile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _cureentindex = 0;

  final icon = CupertinoIcons.moon_stars;
  final screens = [
    Center(
      child: Text('Home'),
    ),
    Center(
      child: Text('Mail'),
    ),
    Center(
      child: Text('Chat'),
    ),
    Center(
      child: Text('Profile'),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(),
        backgroundColor: Colors.amberAccent,
        elevation: 40,
        actions: [
          Icon(icon),
        ],
        centerTitle: true,
        title: Text('A P P B A R'),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   currentIndex: _cureentindex,
      //   selectedFontSize: 15,
      //   backgroundColor: Colors.amberAccent,
      //   items: [
      //     BottomNavigationBarItem(
      //         icon: Icon(Icons.cabin),
      //         label: 'Home  ',
      //         backgroundColor: Colors.amberAccent),
      //     BottomNavigationBarItem(
      //         icon: Icon(Icons.mail),
      //         label: 'Mail',
      //         backgroundColor: Colors.redAccent),
      //     BottomNavigationBarItem(
      //         icon: Icon(Icons.chat),
      //         label: 'Chat',
      //         backgroundColor: Colors.purple),
      //     BottomNavigationBarItem(
      //         icon: Icon(Icons.person),
      //         label: 'Profile',
      //         backgroundColor: Colors.blue),
      //   ],
      //   onTap: (index) {
      //     setState(() {
      //       _cureentindex = index;
      //     });
      //   },
      // ),
      bottomNavigationBar: new Container(
        padding: EdgeInsets.all(0.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: FlatButton.icon(
                onPressed: () {},
                icon: Icon(Icons.home),
                label: Text("Home"),
              ),
            ),
            Expanded(
              flex: 1,
              child: FlatButton.icon(
                onPressed: () {},
                icon: Icon(Icons.chat),
                label: Text("Chat"),
              ),
            ),
            Expanded(
              flex: 1,
              child: FlatButton.icon(
                onPressed: () {
                  setState(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ProfilePage()),
                    );
                  });
                },
                icon: Icon(Icons.person),
                label: Text("Person"),
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Login ',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Enter Email',
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.amberAccent),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.amberAccent),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Enter Password',
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.amberAccent),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.amberAccent),
                ),
              ),
            ),
          ),
          Container(
            child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ProfilePage()),
                  );
                },
                padding:
                    EdgeInsets.only(top: 10, bottom: 10, right: 10, left: 10),
                color: Colors.amberAccent,
                textColor: Colors.black,
                child: Text(
                  'Click Here'.toUpperCase(),
                  style: TextStyle(fontSize: 10),
                )),
            // child: ElevatedButton(
            //     style: ButtonStyle(),
            //     onPressed: () {
            //       setState(() {
            //         Navigator.push(
            //           context,
            //           MaterialPageRoute(
            //             builder: (context) => ProfilePage(),
            //           ),
            //         );
            //       });
            //     },
            //     child: Text('Click')),
          )
        ],
      ),
    );
  }
}
