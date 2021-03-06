
import 'home.page.dart';
import 'login.page.dart';
import 'auth.service.dart';
import 'package:flutter/material.dart';
import 'video.dart';
import 'therapy.dart';
//import 'eval.dart';
//import 'package:firebase_auth/firebase_auth.dart';

AuthService appAuth = new AuthService();
//_LoginPageState appAuth = new LoginPageState();

//AuthService appAuth = new

void main() async {
  // Set default home.
  Widget _defaultHome = new Login();
  // Get result of the login function.
  bool _result = await appAuth.login();
  if (_result) {
    _defaultHome = new MyApp();
  }
  // Run app!
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'App',
    home: _defaultHome,
    routes: <String, WidgetBuilder>{
      // Set routes for using the Navigator.
      '/home': (BuildContext context) => new MyApp(),
      '/login': (BuildContext context) => new Login(),
      '/video': (BuildContext context) => new Video(),
      '/therapy': (BuildContext context) => new Therapy(),
//      '/EvalPage1': (BuildContext context) => new EvalPage(),
    },
  ));
}