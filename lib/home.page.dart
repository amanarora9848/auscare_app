import 'package:flutter/material.dart';
import 'main.dart';
import 'today.dart';
import 'history.dart';
import 'programs.dart';
import 'CardItemModel.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: MyHomePage(),
      backgroundColor: Colors.white,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {

  // Backend Interction Stuff

  final String url="";
  @override
  void initState(){
    super.initState();
    this.getJsonData();
    this.getJsondata9();
    this.getJsonData2();
    this.getJsonData3();
    this.getJsonData4();
    this.getJsonData5();
    this.getJsonData6();
    this.getJsonData7();
    scrollController = new ScrollController();
    _tabController = new TabController(vsync: this, initialIndex: 0, length: 3);
  }
  Future<List> getJsonData() async{
    var url3 = await http.get(url + '/training/Rhymes/start/');
//    responseRhymesStart
//    playStop
//    var init = json.decode(response.body)["near_earth_objects"][0];
//    var name = init["name"];
//    var diameter = init["estimated_diameter"]["kilometers"]["estimated_diameter_max"].toString();
//    var hazard = init["is_potentially_hazardous_asteroid"].toString();
//    var date = init["close_approach_data"][0]["close_approach_date"];
//    List<String> data = [name, diameter, hazard, date];
//    return data;
  //TODO: A list needs to be returned here!
  }

  Future<List> getJsonData5() async {
    var url4 = await http.get(url + '/training/Rhymes/stop/');
//    responseRhymesStop
  }
  Future<List> getJsonData6() async {
    var url7 = await http.get(url + '/play/start/');
//    playStart
  }
  Future<List> getJsonData7() async {
    var url8 = await http.get(url + '/play/stop/');
//    playStop
  }


  Future<List> getJsonData2() async{
    var url5 = await http.get(url + '/beats/start/');
//    beatsStart


//    var init = json.decode(response.body)["near_earth_objects"][0];
//    var name = init["name"];
//    var diameter = init["estimated_diameter"]["kilometers"]["estimated_diameter_max"].toString();
//    var hazard = init["is_potentially_hazardous_asteroid"].toString();
//    var date = init["close_approach_data"][0]["close_approach_date"];
//    List<String> data = [name, diameter, hazard, date];
//    return data;
    //TODO: A list needs to be returned here!
  }

  Future<List> getJsonData4() async {
    var url6 = await http.get(url + '/beats/stop/');
//    beatsStop

  }

  Future<List> getJsonData3() async{
    var url1 = await http.get(Uri.encodeFull(url+'/training/stensile/start/'), headers: {"Accept": "application/json"});
//    responseStensilStart

//    var init = json.decode(response.body)["near_earth_objects"][0];
//    var name = init["name"];
//    var diameter = init["estimated_diameter"]["kilometers"]["estimated_diameter_max"].toString();
//    var hazard = init["is_potentially_hazardous_asteroid"].toString();
//    var date = init["close_approach_data"][0]["close_approach_date"];
//    List<String> data = [name, diameter, hazard, date];
//    return data;
    //TODO: A list needs to be returned here!
  }
  Future<List> getJsondata9() async {
    var url2 = await http.get(Uri.encodeFull(url+'/training/stensile/stop/'), headers: {"Accept": "application/json"});
//    responseStensileStop
  }




  TabController _tabController;
//  var name = 'Aryan';
//  var age;
//
//  @override
//  void initState() {
//    super.initState();
//    _tabController = new TabController(vsync: this, initialIndex: 0, length: 3);
//  }

  var appColors = [Color.fromRGBO(231, 129, 109, 1.0), Color.fromRGBO(99, 138, 223, 1.0), Color.fromRGBO(111, 194, 173, 1.0), Color.fromRGBO(101, 144, 173, 1.0), Color.fromRGBO(111, 204, 73, 1.0), Color.fromRGBO(121, 104, 193, 1.0), Color.fromRGBO(101, 104, 103, 1.0), Color.fromRGBO(111, 94, 93, 1.0), Color.fromRGBO(144, 194, 233, 1.0), Color.fromRGBO(71, 74, 73, 1.0), Color.fromRGBO(111, 194, 173, 1.0), Color.fromRGBO(111, 194, 173, 1.0)];
  var cardIndex = 0;
  ScrollController scrollController;
  var currentColor = Color.fromRGBO(231, 129, 109, 1.0);
  var cardsList = [CardItemModel("Writing Training", Icons.account_circle),CardItemModel("View Rhymes", Icons.work), CardItemModel("Therapy Guide", Icons.play_for_work), CardItemModel("Fun Game", Icons.home), CardItemModel("Binaural Calming", Icons.music_note)];

  var appColors2 = [Color.fromRGBO(111, 234, 73, 1.0), Color.fromRGBO(121, 104, 193, 1.0), Color.fromRGBO(101, 104, 103, 1.0), Color.fromRGBO(111, 94, 93, 1.0), Color.fromRGBO(144, 194, 203, 1.0), Color.fromRGBO(71, 74, 73, 1.0), Color.fromRGBO(111, 194, 173, 1.0), Color.fromRGBO(111, 194, 173, 1.0), Color.fromRGBO(111, 234, 73, 1.0), Color.fromRGBO(121, 104, 193, 1.0), Color.fromRGBO(101, 104, 103, 1.0), Color.fromRGBO(111, 94, 93, 1.0), Color.fromRGBO(144, 194, 203, 1.0), Color.fromRGBO(71, 74, 73, 1.0), Color.fromRGBO(111, 194, 173, 1.0), Color.fromRGBO(111, 194, 173, 1.0), Color.fromRGBO(111, 234, 73, 1.0), Color.fromRGBO(121, 104, 193, 1.0), Color.fromRGBO(101, 104, 103, 1.0), Color.fromRGBO(111, 94, 93, 1.0), Color.fromRGBO(144, 194, 203, 1.0), Color.fromRGBO(71, 74, 73, 1.0), Color.fromRGBO(111, 194, 173, 1.0), Color.fromRGBO(111, 194, 173, 1.0), Color.fromRGBO(111, 234, 73, 1.0), Color.fromRGBO(121, 104, 193, 1.0), Color.fromRGBO(101, 104, 103, 1.0), Color.fromRGBO(111, 94, 93, 1.0), Color.fromRGBO(144, 194, 203, 1.0), Color.fromRGBO(71, 74, 73, 1.0), Color.fromRGBO(111, 194, 173, 1.0), Color.fromRGBO(111, 194, 173, 1.0)];
  var cardsList2 = [CardItemModel("Today's Activities", Icons.account_circle)];


  var appColors3 = [Color.fromRGBO(111, 194, 173, 1.0), Color.fromRGBO(101, 144, 173, 1.0), Color.fromRGBO(111, 204, 73, 1.0), Color.fromRGBO(144, 194, 203, 1.0), Color.fromRGBO(71, 74, 73, 1.0), Color.fromRGBO(111, 194, 173, 1.0), Color.fromRGBO(111, 194, 173, 1.0), Color.fromRGBO(111, 234, 73, 1.0), Color.fromRGBO(121, 104, 193, 1.0), Color.fromRGBO(101, 104, 103, 1.0), Color.fromRGBO(111, 94, 93, 1.0), Color.fromRGBO(144, 194, 203, 1.0), Color.fromRGBO(71, 74, 73, 1.0), Color.fromRGBO(111, 194, 173, 1.0), Color.fromRGBO(111, 194, 173, 1.0), Color.fromRGBO(111, 194, 173, 1.0), Color.fromRGBO(101, 144, 173, 1.0), Color.fromRGBO(111, 204, 73, 1.0), Color.fromRGBO(144, 194, 203, 1.0), Color.fromRGBO(71, 74, 73, 1.0), Color.fromRGBO(111, 194, 173, 1.0), Color.fromRGBO(111, 194, 173, 1.0), Color.fromRGBO(111, 194, 173, 1.0), Color.fromRGBO(101, 144, 173, 1.0), Color.fromRGBO(111, 204, 73, 1.0), Color.fromRGBO(144, 194, 203, 1.0), Color.fromRGBO(71, 74, 73, 1.0), Color.fromRGBO(111, 194, 173, 1.0), Color.fromRGBO(111, 194, 173, 1.0), Color.fromRGBO(111, 194, 173, 1.0), Color.fromRGBO(101, 144, 173, 1.0), Color.fromRGBO(111, 204, 73, 1.0), Color.fromRGBO(144, 194, 203, 1.0), Color.fromRGBO(71, 74, 73, 1.0), Color.fromRGBO(111, 194, 173, 1.0), Color.fromRGBO(111, 194, 173, 1.0), Color.fromRGBO(111, 194, 173, 1.0), Color.fromRGBO(101, 144, 173, 1.0), Color.fromRGBO(111, 204, 73, 1.0), Color.fromRGBO(144, 194, 203, 1.0), Color.fromRGBO(71, 74, 73, 1.0), Color.fromRGBO(111, 194, 173, 1.0), Color.fromRGBO(111, 194, 173, 1.0)];
  var cardsList3 = [CardItemModel("Previous Activities", Icons.account_circle)];


  AnimationController animationController;
  ColorTween colorTween;
  CurvedAnimation curvedAnimation;


//  @override
//  void initState() {
//    super.initState();
//    scrollController = new ScrollController();
//    _tabController = new TabController(vsync: this, initialIndex: 0, length: 3);
//  }


  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        drawer: new Drawer(
          elevation: 20.0,
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              new UserAccountsDrawerHeader(
                accountName: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 2.0),
                  child: Text(
                    "Aryan",
                    style: new TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 25.0,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  color: Color.fromARGB(0xFF, 227, 195, 66),
                ),
                currentAccountPicture: CircleAvatar(
                  backgroundColor:
                  Theme.of(context).platform == TargetPlatform.android
                      ? Color.fromARGB(0xFF, 72, 163, 111)
                      : Colors.white,
                  child: Text(
                    "A",
                    style: TextStyle(fontSize: 40.0),
                  ),
                  foregroundColor: Colors.white,
                ),
              ),
              new ListTile(
                title: Text('Change User'),
                leading: Icon(Icons.exit_to_app),
                onTap: () {
                  //Navigator.of(context).pushNamed("/EvalPage");
                  //Opens up the login page.
                  appAuth.logout().then(
                        (_) => Navigator.of(context).pushReplacementNamed('/login'),
                  );
                  //Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('Settings'),
                leading: Icon(Icons.settings),
                onTap: () {
                  //Opens up the accounts page.
                  // Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
        backgroundColor: currentColor,
        appBar: new AppBar(
          title: new Text("DASHBOARD", style: TextStyle(fontSize: 16.0),),
          backgroundColor: currentColor,
          centerTitle: true,
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: Icon(Icons.search),
            ),
          ],
          elevation: 0.0,
          bottom: PreferredSize(
            child: TabBar(
              isScrollable: true,
              unselectedLabelColor: Colors.white.withOpacity(0.3),
              indicatorColor: Color.fromARGB(0xFF, 227, 195, 66),
              tabs: [
                Tab(
                  child: Text('PROGRAMS'),
                ),
                Tab(
                  child: Text('TODAY'),
                ),
                Tab(
                  child: Text('HISTORY'),
                ),
              ]
            ),
          preferredSize: Size.fromHeight(50.0)),
        ),
        body: TabBarView(
          children: <Widget>[
            new Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 64.0, vertical: 32.0),
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0.0, 16.0, 0.0, 12.0),
                            child: Text(
                              "Hello, Aryan's guardian.",
                              style: TextStyle(
                                  fontSize: 30.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400
                              ),
                            ),
                          ),
                          Text(
                            "Select programs from the following list:",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        height: height / 1.8,
                        child: ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: 5,
                          controller: scrollController,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, position) {
                            return GestureDetector(
                              onTap: () {
                                if(cardIndex == 1) {
                                  Navigator.of(context).pushReplacementNamed('/video');
                                  getJsonData();
                                }
                                if(cardIndex == 2) {
                                  Navigator.of(context).pushReplacementNamed('/therapy');
                                  getJsonData();
                                }
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Card(
                                  child: Container(
                                    width: 250.0,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: <Widget>[
                                              Icon(
                                                cardsList[position].icon,
                                                color: appColors[position],
                                              ),
                                              Icon(
                                                Icons.more_vert,
                                                color: Colors.grey,
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(top: 20.0),
                                          child: Container(
                                            height: height/10,
                                            width: width,
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: <Widget>[
                                                GestureDetector(
                                                  onTap: () {
                                                    if(cardIndex == 0) {
                                                      getJsonData3();
                                                    }
                                                    if(cardIndex == 1) {
                                                      getJsonData();
                                                    }
                                                    if(cardIndex == 3) {
                                                      getJsonData6();
                                                    }
                                                  },
                                                  child: new Card(
                                                    child: Padding(
                                                      padding: const EdgeInsets.all(8.0),
                                                      child: new Icon(
                                                        Icons.play_arrow,
                                                        size: 60.0,
                                                      ),
                                                    ),
                                                    elevation: 3.0,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Container(
                                          height: height/10,
                                          width: width,
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: <Widget>[
                                              GestureDetector(
                                                onTap: () {
                                                  if(cardIndex == 0){
                                                    getJsondata9();
                                                  }
                                                  if(cardIndex == 1) {
                                                    getJsonData5();
                                                  }
                                                  if(cardIndex == 2) {
                                                    getJsonData3();
                                                  }
                                                  if(cardIndex == 3) {
                                                    getJsonData7();
                                                  }
                                                },
                                                child: Card(
                                                  child: Padding(
                                                    padding: const EdgeInsets.all(8.0),
                                                    child: new Icon(
                                                      Icons.stop,
                                                      size: 60.0,
                                                    ),
                                                  ),
                                                  elevation: 3.0,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Padding(
                                                padding: const EdgeInsets.symmetric(
                                                    horizontal: 8.0,
                                                    vertical: 4.0
                                                ),
                                                child: Text(
                                                  "${cardsList[position].cardTitle}",
                                                  style: TextStyle(
                                                    fontSize: 28.0,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0)
                                  ),
                                ),
                              ),
                              onHorizontalDragEnd: (details) {
                                animationController = AnimationController(
                                  vsync: this,
                                  duration: Duration(
                                      milliseconds: 500
                                  ),
                                );
                                curvedAnimation = CurvedAnimation(
                                  parent: animationController,
                                  curve: Curves.fastOutSlowIn,
                                );
                                animationController.addListener(() {
                                  setState(() {
                                    currentColor = colorTween.evaluate(curvedAnimation);
                                  });
                                });
                                if(details.velocity.pixelsPerSecond.dx > 0) {
                                  if(cardIndex>0) {
                                    cardIndex--;
                                    colorTween = ColorTween(
                                        begin:currentColor,
                                        end:appColors[cardIndex]
                                    );
                                  }
                                }else {
                                  if(cardIndex<5) {
                                    cardIndex++;
                                    colorTween = ColorTween(begin: currentColor,
                                        end: appColors[cardIndex]);
                                  }
                                }
                                setState(() {
                                  scrollController.animateTo((cardIndex)*256.0,
                                      duration: Duration(
                                          milliseconds: 500
                                      ),
                                      curve: Curves.fastOutSlowIn
                                  );
                                });
                                colorTween.animate(curvedAnimation);
                                animationController.forward();
                              },
                            );
                          },
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            new Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 64.0, vertical: 10.0),
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0.0, 16.0, 0.0, 12.0),
                            child: Text(
                              "Hello, Aryan's guardian.",
                              style: TextStyle(
                                  fontSize: 30.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400
                              ),
                            ),
                          ),
                          Text(
                            "See your Indigo's current activities here:",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 32),
                        child: Center(
                          child: Container(
                            height: height / 1.75,
                            child: ListView.builder(
                              physics: NeverScrollableScrollPhysics(),
                              itemCount: 1,
                              controller: scrollController,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, position) {
                                return GestureDetector(
                                  child:
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Card(
                                      child: Container(
                                        width: width/1.3,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: <Widget>[
                                                  Icon(
                                                    cardsList2[position].icon,
                                                    color: appColors2[position],
                                                  ),
                                                  Icon(
                                                    Icons.more_vert,
                                                    color: Colors.grey,
                                                  ),
                                                ],
                                              ),
                                            ),

                                            Center(
                                              child: new Container(
                                                height: height/2.4,
                                                width: width/1.5,
                                                child: ListView(
                                                  children: <Widget>[
                                                    new Text(
                                                      'Hello',
                                                    ),
                                                    new Text(
                                                      'Hello again',
                                                    ),
                                                    new Text(
                                                      'Hello now also',
                                                    ),
                                                    new Text(
                                                      'Hello then also',
                                                    ),
                                                    new Text(
                                                      'Hello if possible',
                                                    ),
                                                    new Text(
                                                      'Hello there!',
                                                    ),
                                                    new Text(
                                                      'Hello moto',
                                                    ),
                                                    new Text(
                                                      'Hello',
                                                    ),
                                                    new Text(
                                                      'Hello again',
                                                    ),
                                                    new Text(
                                                      'Hello now also',
                                                    ),
                                                    new Text(
                                                      'Hello then also',
                                                    ),
                                                    new Text(
                                                      'Hello if possible',
                                                    ),
                                                    new Text(
                                                      'Hello there!',
                                                    ),
                                                    new Text(
                                                      'Hello moto',
                                                    ),
                                                    new Text(
                                                      'Hello',
                                                    ),
                                                    new Text(
                                                      'Hello again',
                                                    ),
                                                    new Text(
                                                      'Hello now also',
                                                    ),
                                                    new Text(
                                                      'Hello then also',
                                                    ),
                                                    new Text(
                                                      'Hello if possible',
                                                    ),
                                                    new Text(
                                                      'Hello there!',
                                                    ),
                                                    new Text(
                                                      'Hello moto',
                                                    ),
                                                    new Text(
                                                      'Hello',
                                                    ),
                                                    new Text(
                                                      'Hello again',
                                                    ),
                                                    new Text(
                                                      'Hello now also',
                                                    ),
                                                    new Text(
                                                      'Hello then also',
                                                    ),
                                                    new Text(
                                                      'Hello if possible',
                                                    ),
                                                    new Text(
                                                      'Hello there!',
                                                    ),
                                                    new Text(
                                                      'Hello moto',
                                                    ),
                                                    new Text(
                                                      'Hello',
                                                    ),
                                                    new Text(
                                                      'Hello again',
                                                    ),
                                                    new Text(
                                                      'Hello now also',
                                                    ),
                                                    new Text(
                                                      'Hello then also',
                                                    ),
                                                    new Text(
                                                      'Hello if possible',
                                                    ),
                                                    new Text(
                                                      'Hello there!',
                                                    ),
                                                    new Text(
                                                      'Hello moto',
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),

                                            Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Padding(
                                                    padding: const EdgeInsets.symmetric(
                                                        horizontal: 8.0,
                                                        vertical: 4.0
                                                    ),
                                                    child: Text(
                                                      "${cardsList2[position].cardTitle}",
                                                      style: TextStyle(
                                                          fontSize: 28.0
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10.0)
                                      ),
                                    ),
                                  ),
                                  onHorizontalDragEnd: (details) {
                                    animationController = AnimationController(
                                      vsync: this,
                                      duration: Duration(
                                          milliseconds: 500
                                      ),
                                    );
                                    curvedAnimation = CurvedAnimation(
                                      parent: animationController,
                                      curve: Curves.fastOutSlowIn,
                                    );
                                    animationController.addListener(() {
                                      setState(() {
                                        currentColor = colorTween.evaluate(curvedAnimation);
                                      });
                                    });

                                    if(details.velocity.pixelsPerSecond.dx > 0) {
                                      if(cardIndex>0) {
                                        cardIndex--;
                                        colorTween = ColorTween(
                                            begin:currentColor,
                                            end:appColors2[cardIndex]
                                        );
                                      }
                                    }else {
                                      if(cardIndex<3) {
                                        cardIndex++;
                                        colorTween = ColorTween(begin: currentColor,
                                            end: appColors2[cardIndex]);
                                      }
                                    }
                                    setState(() {
                                      scrollController.animateTo((cardIndex)*256.0,
                                          duration: Duration(
                                              milliseconds: 500
                                          ),
                                          curve: Curves.fastOutSlowIn
                                      );
                                    });
                                    colorTween.animate(curvedAnimation);
                                    animationController.forward( );
                                  },
                                  onTap: () {

                                  }
                                );
                              },
                            ),
                          ),
                        ),
                      ),
                      FloatingActionButton(
                        backgroundColor: Colors.white,
                        onPressed: () {},
                      ),
                    ],
                  )
                ],
              ),
            ),
            new Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 64.0, vertical: 10.0),
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0.0, 16.0, 0.0, 12.0),
                            child: Text(
                              "Hello, Aryan's guardian.",
                              style: TextStyle(
                                  fontSize: 30.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400
                              ),
                            ),
                          ),
                          Text(
                            "See your Indigo's current activities here:",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 32),
                        child: Center(
                          child: Container(
                            height: height / 1.75,
                            child: ListView.builder(
                              physics: NeverScrollableScrollPhysics(),
                              itemCount: 1,
                              controller: scrollController,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, position) {
                                return GestureDetector(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Card(
                                      child: Container(
                                        width: width/1.3,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: <Widget>[
                                                  Icon(
                                                    cardsList3[position].icon,
                                                    color: appColors2[position],
                                                  ),
                                                  Icon(
                                                    Icons.more_vert,
                                                    color: Colors.grey,
                                                  ),
                                                ],
                                              ),
                                            ),

                                            Center(
                                              child: new Container(
                                                height: height/2.4,
                                                width: width/1.5,
                                                child: ListView(
                                                  children: <Widget>[
                                                    new Text(
                                                      'Hello',
                                                    ),
                                                    new Text(
                                                      'Hello again',
                                                    ),
                                                    new Text(
                                                      'Hello now also',
                                                    ),
                                                    new Text(
                                                      'Hello then also',
                                                    ),
                                                    new Text(
                                                      'Hello if possible',
                                                    ),
                                                    new Text(
                                                      'Hello there!',
                                                    ),
                                                    new Text(
                                                      'Hello moto',
                                                    ),
                                                    new Text(
                                                      'Hello',
                                                    ),
                                                    new Text(
                                                      'Hello again',
                                                    ),
                                                    new Text(
                                                      'Hello now also',
                                                    ),
                                                    new Text(
                                                      'Hello then also',
                                                    ),
                                                    new Text(
                                                      'Hello if possible',
                                                    ),
                                                    new Text(
                                                      'Hello there!',
                                                    ),
                                                    new Text(
                                                      'Hello moto',
                                                    ),
                                                    new Text(
                                                      'Hello',
                                                    ),
                                                    new Text(
                                                      'Hello again',
                                                    ),
                                                    new Text(
                                                      'Hello now also',
                                                    ),
                                                    new Text(
                                                      'Hello then also',
                                                    ),
                                                    new Text(
                                                      'Hello if possible',
                                                    ),
                                                    new Text(
                                                      'Hello there!',
                                                    ),
                                                    new Text(
                                                      'Hello moto',
                                                    ),
                                                    new Text(
                                                      'Hello',
                                                    ),
                                                    new Text(
                                                      'Hello again',
                                                    ),
                                                    new Text(
                                                      'Hello now also',
                                                    ),
                                                    new Text(
                                                      'Hello then also',
                                                    ),
                                                    new Text(
                                                      'Hello if possible',
                                                    ),
                                                    new Text(
                                                      'Hello there!',
                                                    ),
                                                    new Text(
                                                      'Hello moto',
                                                    ),
                                                    new Text(
                                                      'Hello',
                                                    ),
                                                    new Text(
                                                      'Hello again',
                                                    ),
                                                    new Text(
                                                      'Hello now also',
                                                    ),
                                                    new Text(
                                                      'Hello then also',
                                                    ),
                                                    new Text(
                                                      'Hello if possible',
                                                    ),
                                                    new Text(
                                                      'Hello there!',
                                                    ),
                                                    new Text(
                                                      'Hello moto',
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),

                                            Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Padding(
                                                    padding: const EdgeInsets.symmetric(
                                                        horizontal: 8.0,
                                                        vertical: 4.0
                                                    ),
                                                    child: Text(
                                                      "${cardsList3[position].cardTitle}",
                                                      style: TextStyle(
                                                          fontSize: 26.0
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10.0)
                                      ),
                                    ),
                                  ),
                                  onHorizontalDragEnd: (details) {
                                    animationController = AnimationController(
                                      vsync: this,
                                      duration: Duration(
                                          milliseconds: 500
                                      ),
                                    );
                                    curvedAnimation = CurvedAnimation(
                                      parent: animationController,
                                      curve: Curves.fastOutSlowIn,
                                    );
                                    animationController.addListener(() {
                                      setState(() {
                                        currentColor = colorTween.evaluate(curvedAnimation);
                                      });
                                    });

                                    if(details.velocity.pixelsPerSecond.dx > 0) {
                                      if(cardIndex>0) {
                                        cardIndex--;
                                        colorTween = ColorTween(
                                            begin:currentColor,
                                            end:appColors3[cardIndex]
                                        );
                                      }
                                    }else {
                                      if(cardIndex<2) {
                                        cardIndex++;
                                        colorTween = ColorTween(begin: currentColor,
                                            end: appColors3[cardIndex]);
                                      }
                                    }
                                    setState(() {
                                      scrollController.animateTo((cardIndex)*256.0,
                                          duration: Duration(
                                              milliseconds: 500
                                          ),
                                          curve: Curves.fastOutSlowIn
                                      );
                                    });
                                    colorTween.animate(curvedAnimation);
                                    animationController.forward( );
                                  },
                                );
                              },
                            ),
                          ),
                        ),
                      ),
                      FloatingActionButton(
                        backgroundColor: Colors.white,
                        onPressed: () {
                          getJsonData();
                        },
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}