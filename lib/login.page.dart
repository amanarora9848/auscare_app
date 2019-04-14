import 'main.dart';
import 'package:flutter/material.dart';
//import 'package:firebase_auth/firebase_auth.dart';
import 'dart:async';
import 'home.page.dart';
import 'dart:async';
import 'dart:convert';

void main() {
  runApp(Login());
}

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoginPage(),
    );
  }
}

MyHomePage name = new MyHomePage();

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final myController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the Widget is disposed
    myController.dispose();
    super.dispose();
  }

  String _status = '';

  @override
  Widget build(BuildContext context) {
    var pageWidth = MediaQuery
        .of(context)
        .size
        .width;
    var pageHeight = MediaQuery
        .of(context)
        .size
        .height;
    return new Scaffold(
        resizeToAvoidBottomPadding: false,
        backgroundColor: Colors.white,
        body: new Stack(
          fit: StackFit.expand,
          children: <Widget>[
            new Image(
              image: new AssetImage(
                'assets/images/autism.jpg',
              ),
              fit: BoxFit.cover,
              color: Colors.black87,
              colorBlendMode: BlendMode.darken,
            ),
            new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Image(
                  image: AssetImage(
                    'assets/images/auscare.png',
                  ),
                ),
//                Text(
//                  'AusCare',
//                  style: TextStyle(
//                    color: Colors.white,
//                    letterSpacing: 5.0,
//                    fontWeight: FontWeight.w700,
//                    fontSize: 38.0
//                  ),
//                ),
                new Form(
                  child: Theme(
                    data: new ThemeData(
                      brightness: Brightness.dark,
                      primarySwatch: Colors.lightBlue,
                      inputDecorationTheme: InputDecorationTheme(
                          labelStyle: new TextStyle(
                            color: Color.fromARGB(0xFF, 72, 163, 111),
                            fontSize: 20.0,
                          )
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 18.0, vertical: 16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          TextFormField(
                            decoration: new InputDecoration(
                                hintText: 'Name of the Person',
                                labelText: 'Name'
                            ),
                            controller: myController,
                            validator: (input) {
                              if (input.isEmpty) {
                                return "Identification will be helpful!";
                              }
                            },
                            keyboardType: TextInputType.text,
                          ),
                          TextField(
                            decoration: new InputDecoration(labelText: "Age"),
                            keyboardType: TextInputType.number,
                          ),
                          new Padding(padding: EdgeInsets.only(top: 30.0)),
                          new MaterialButton(
                            color: Color.fromARGB(0xFF, 72, 163, 111),
                            minWidth: 100.0,
                            height: 40.0,
                            elevation: 20.0,
                            textColor: Colors.white,
                            child: new Text(
                              "Continue $_status", style: TextStyle(
                              fontSize: 16.0,
                            ),),
                            onPressed: () {
                              setState(() => this._status = 'loading');
                              appAuth.login().then((result) {
                                if (result) {
                                  Navigator.of(context).pushReplacementNamed('/home');
                                } else {
                                  setState(() => this._status = 'rejected');
                                }
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        )
    );
  }
}