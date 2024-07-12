import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uom_travel_buddy/user/infoHandler/app_info.dart';
import 'driver_user_selected_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: "AIzaSyAgxqdVLeg3OrqPx1YAUxgwpO0m6zMG4M0",
          authDomain: "uom-travel-buddy.firebaseapp.com",
          databaseURL: "https://uom-travel-buddy-default-rtdb.firebaseio.com",
          projectId: "uom-travel-buddy",
          storageBucket: "uom-travel-buddy.appspot.com",
          messagingSenderId: "299964355413",
          appId: "1:299964355413:web:339959231cc274804e15dc",
          measurementId: "G-1PP8ZDZZG7"));
  runApp(MyApp(
    child: ChangeNotifierProvider(
      create: (context) => AppInfo(),
      child: MaterialApp(
        title: 'UOM TRAVEL BUDDY',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: selectedScreen(),
        debugShowCheckedModeBanner: false,
      ),
    ),
  ));
}

class MyApp extends StatefulWidget {
  final Widget? child;

  MyApp({this.child});

  static void restartApp(BuildContext context) {
    context.findAncestorStateOfType<_MyAppState>()!.restartApp();
  }

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Key key = UniqueKey();

  void restartApp() {
    setState(() {
      key = UniqueKey();
    });
  }

  @override
  Widget build(BuildContext context) {
    return KeyedSubtree(
      key: key,
      child: widget.child!,
    );
  }
}
