// import 'package:flutter/material.dart';

// class UserProfile extends StatefulWidget {
//   const UserProfile({Key? key}) : super(key: key);

//   @override
//   State<UserProfile> createState() => _UserProfileState();
// }

// class _UserProfileState extends State<UserProfile> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(

// ignore_for_file: prefer_const_declarations

//         //   appBar: AppBar(
//         //     backgroundColor: Colors.white,
//         //     shadowColor: Colors.transparent,
//         //   ),
//         );
//   }
// }
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

AppBar buildAppBar(BuildContext context) {
  final icon = CupertinoIcons.moon_stars;
  return AppBar(
    leading: BackButton(
      color: Colors.black,
    ),
    backgroundColor: Colors.transparent,
    elevation: 0,
    actions: [
      IconButton(
        onPressed: () {},
        icon: Icon(
          icon,
          color: Colors.black,
        ),
      )
    ],
  );
}
