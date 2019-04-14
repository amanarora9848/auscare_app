import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart';

class Program extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ProgramPage(),
    );
  }
}
class ProgramPage extends StatefulWidget {
  @override
  _ProgramPageState createState() => _ProgramPageState();
}

class _ProgramPageState extends State<ProgramPage> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return new Scaffold(
      body: new Stack(
        children: <Widget>[
          new Image(
            image: new AssetImage(
              'assets/images/cloud.jpg',
            ),
            fit: BoxFit.cover,
            color: Colors.white54,
            colorBlendMode: BlendMode.lighten,
            height: double.infinity,
            width: double.infinity,
          ),
          new Container(
            height: height,
            width: width,
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 2.0),
                  child: new Container(
                    height: height/12,
                    width: width/1.5,
                    child: new Card(
                      color: Colors.white,
                      elevation: 13.0,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: new Text(
                          'PROGRAMS',
                          textAlign: TextAlign.center,
                          style: new TextStyle(
                            color: Colors.purple,
                            fontSize: 30.0,
                            fontWeight: FontWeight.w700,
                            letterSpacing: 2.0
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 3.0, horizontal: 2.0),
                  child: new Container(
                    height: height/6,
                    width: width/1.01,
                    child: new Card(
                      color: Colors.white,
                      elevation: 13.0,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: new Text(
                          '1',
                          textAlign: TextAlign.center,
                          style: new TextStyle(
                              color: Colors.purple,
                              fontSize: 30.0,
                              fontWeight: FontWeight.w700,
                              letterSpacing: 2.0
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 3.0, horizontal: 2.0),
                  child: new Container(
                    height: height/6,
                    width: width/1.01,
                    child: new Card(
                      color: Colors.white,
                      elevation: 13.0,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: new Text(
                          '2',
                          textAlign: TextAlign.center,
                          style: new TextStyle(
                              color: Colors.purple,
                              fontSize: 30.0,
                              fontWeight: FontWeight.w700,
                              letterSpacing: 2.0
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 3.0, horizontal: 2.0),
                  child: new Container(
                    height: height/6,
                    width: width/1.01,
                    child: new Card(
                      color: Colors.white,
                      elevation: 13.0,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: new Text(
                          '3',
                          textAlign: TextAlign.center,
                          style: new TextStyle(
                              color: Colors.purple,
                              fontSize: 30.0,
                              fontWeight: FontWeight.w700,
                              letterSpacing: 2.0
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 3.0, horizontal: 2.0),
                  child: new Container(
                    height: height/6,
                    width: width/1.01,
                    child: new Card(
                      color: Colors.white,
                      elevation: 13.0,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: new Text(
                          '4',
                          textAlign: TextAlign.center,
                          style: new TextStyle(
                              color: Colors.purple,
                              fontSize: 30.0,
                              fontWeight: FontWeight.w700,
                              letterSpacing: 2.0
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

