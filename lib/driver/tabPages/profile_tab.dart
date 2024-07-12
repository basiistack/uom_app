import 'package:flutter/material.dart';
import '../global/global.dart';
import '../splashScreen/splash_screen.dart';

class ProfilePageTab extends StatefulWidget {
  const ProfilePageTab({Key? key}) : super(key: key);

  @override
  State<ProfilePageTab> createState() => _ProfilePageTabState();
}

class _ProfilePageTabState extends State<ProfilePageTab> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(primary: Colors.green),
        child: Text(
          "Sign out",
          style: TextStyle(color: Colors.black),
        ),
        onPressed: () {
          fAuth.signOut();
          Navigator.push(
              context, MaterialPageRoute(builder: (c) => MySplashScreen()));
        },
      ),
    );
  }
}
