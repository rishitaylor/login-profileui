import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/home.dart';
import 'package:flutter_application_2/userprofile.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final icon = CupertinoIcons.moon_stars;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              setState(() {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ),
                );
              });
            },
            icon: Icon(
              Icons.arrow_back_ios_new_rounded,
              color: Colors.black,
            )),
        title: Center(
          child: Text(
            "Team",
            style: TextStyle(color: Colors.black),
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => UserProfile(),
                  ),
                );
              },
              icon: Icon(
                Icons.account_circle_rounded,
                color: Colors.purple,
                size: 35,
              ))
        ],
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Notification",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.black87),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                elevation: 8,
                child: ListTile(
                  title: Text(
                    'Angelina Mark',
                    textScaleFactor: 1.5,
                    style: TextStyle(color: Colors.black),
                  ),
                  subtitle: Text(
                    'Some message here',
                    style: TextStyle(color: Colors.black45),
                  ),
                  selected: true,
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.cancel,
                            color: Colors.red,
                            size: 35,
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.check_circle_rounded,
                            color: Colors.green,
                            size: 35,
                          )),
                    ],
                  ),
                  // trailing: IconButton(
                  //     onPressed: () {},
                  //     icon: Icon(
                  //       Icons.cancel,
                  //       color: Colors.red,
                  //     ))
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Admin",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.black87),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                elevation: 8,
                child: ListTile(
                  leading: Container(
                    width: 50,
                    height: 50,
                    child: CircleAvatar(
                        backgroundImage: AssetImage(
                      "images/user1.jpg",
                    )),
                  ),
                  title: Text(
                    'Rahul Bhatt',
                    textScaleFactor: 1.5,
                    style: TextStyle(color: Colors.black),
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Admin',
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                      Text(
                        'Some message here',
                        style: TextStyle(color: Colors.black45),
                      ),
                    ],
                  ),
                  selected: true,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                elevation: 8,
                child: ListTile(
                  leading: Container(
                    width: 50,
                    height: 50,
                    child: CircleAvatar(
                        backgroundImage: AssetImage(
                      "images/user2.png",
                    )),
                  ),
                  title: Text(
                    'Rossy Bostton',
                    textScaleFactor: 1.5,
                    style: TextStyle(color: Colors.black),
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Admin',
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                      Text(
                        'Some message here',
                        style: TextStyle(color: Colors.black45),
                      ),
                    ],
                  ),
                  selected: true,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Employee",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.black87),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                elevation: 8,
                child: ListTile(
                  leading: Container(
                    width: 50,
                    height: 50,
                    child: CircleAvatar(
                        backgroundImage: AssetImage(
                      "images/user1.jpg",
                    )),
                  ),
                  title: Text(
                    'Sem Lucifer',
                    textScaleFactor: 1.5,
                    style: TextStyle(color: Colors.black),
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Employee',
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                      Text(
                        'Some message here',
                        style: TextStyle(color: Colors.black45),
                      ),
                    ],
                  ),
                  selected: true,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
