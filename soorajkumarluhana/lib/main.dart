import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:soorajkumarluhana/LoginPage.dart';
import 'package:soorajkumarluhana/SignUp.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
@override
 _MyAppState createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initialization,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Container();
        }
        if (snapshot.connectionState == ConnectionState.done) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: SignUp(),
          );
        }
        return Container();
      },
    );
  }
}