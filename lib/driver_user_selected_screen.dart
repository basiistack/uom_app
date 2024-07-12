import 'package:flutter/material.dart';
import 'package:uom_travel_buddy/user/splashScreen/splash_screen.dart';
import 'driver/splashScreen/splash_screen.dart';

class selectedScreen extends StatefulWidget {
  const selectedScreen({Key? key}) : super(key: key);

  @override
  State<selectedScreen> createState() => _selectedScreenState();
}

class _selectedScreenState extends State<selectedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 130,
              ),
              Image.asset("images/logo1.png"),
              SizedBox(
                height: 40,
              ),
              Center(
                child: Text(
                  "Welcome to UOM travel Buddy select your choice as a Driver or as a passanger",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 140,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (c) => MySplashScreen()));
                    },
                    child: Container(
                      height: 60,
                      width: 140,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.lightGreenAccent),
                      child: Center(
                        child: Text(
                          "Driver",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (c) => MySplashScreenU()));
                    },
                    child: Container(
                      height: 60,
                      width: 140,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.lightGreenAccent),
                      child: Center(
                        child: Text(
                          "Passanger",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
