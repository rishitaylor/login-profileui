import 'package:flutter/material.dart';
import 'package:flutter_application_2/appbar.dart';
import 'package:flutter_application_2/buttonwidget.dart';
import 'package:flutter_application_2/numberswidget.dart';
import 'package:flutter_application_2/profilewidget.dart';
import 'package:flutter_application_2/user.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    final user = UserPrefrence.myUser;
    return Scaffold(
      appBar: buildAppBar(context),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          ProfileWidget(
            imagePath: user.imagePath,
            onClicked: () async {},
          ),
          SizedBox(height: 24),
          buildName(user),
          SizedBox(height: 24),
          Center(child: buildUpgradeButton()),
          SizedBox(
            height: 24,
          ),
          NumberWidget(),
          SizedBox(
            height: 48,
          ),
          buildAbout(user),
        ],
      ),
    );
  }

  Widget buildName(User user) => Column(
        children: [
          Text(
            user.name,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          Text(
            user.email,
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
          ),
        ],
      );
  Widget buildUpgradeButton() => ButtonWidget(
        text: 'Upgrade To PRO',
        onClicked: () {},
      );
  Widget buildAbout(User user) => Container(
        padding: EdgeInsets.symmetric(horizontal: 48),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'About',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              user.about,
              style: TextStyle(
                  fontSize: 16, height: 1.4, fontWeight: FontWeight.bold),
            )
          ],
        ),
      );
}

class UserPrefrence {
  static const myUser = User(
    imagePath:
        'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
    name: 'Roy Stan',
    email: 'roystan@gmail.com',
    about:
        'Certifiled Ethical Hacker At NewYork With The Five Year of Experinece',
    isDarkMode: '',
  );
}
