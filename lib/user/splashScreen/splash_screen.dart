import 'dart:async';
import 'package:flutter/material.dart';
import 'package:uom_travel_buddy/user/MainScreen/main_screen.dart';
import '../../driver/global/global.dart';
import '../assistants/assistant_methods.dart';
import '../authentication/login_screen.dart';

class MySplashScreenU extends StatefulWidget {
  const MySplashScreenU({Key? key}) : super(key: key);

  @override
  State<MySplashScreenU> createState() => _MySplashScreenUState();
}

class _MySplashScreenUState extends State<MySplashScreenU> {
  startTimer() {
    fAuth.currentUser != null
        ? AssistantMethods.readCurrentOnlineUserInfo()
        : null;
    Timer(const Duration(seconds: 2), () async {
      if (await fAuth.currentUser != null) {
        currentFirebaseUser = fAuth.currentUser;
        Navigator.push(
            context, MaterialPageRoute(builder: (c) => MainScreenU()));
      } else {
        Navigator.push(
            context, MaterialPageRoute(builder: (c) => LoginScreenU()));
      }
    });
  }

  @override
  void initState() {
    startTimer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.black,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("images/logo.png"),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(30),
                child: Center(
                  child: const Text(
                    "WELCOME PASSANGER",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
