import 'package:flutter/material.dart';
import 'CardItemModel.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

void main() => runApp(Video());

class Video extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: VideoState(),
      backgroundColor: Colors.white,
    );
  }
}
class VideoState extends StatefulWidget {
  @override
  _VideoStateState createState() => _VideoStateState();
}

class _VideoStateState extends State<VideoState> with TickerProviderStateMixin{

  //API interaction stuff.
  final String url="";
  @override
  void initState(){
    super.initState();
    this.getJsonData1();
    this.getJsonData2();
    scrollController = new ScrollController();
  }
  Future<List> getJsonData1() async{
    var url0 = await http.get(url + '/training/Rhymes/start/');

//    var init = json.decode(response.body)["near_earth_objects"][0];
//    var name = init["name"];
//    var diameter = init["estimated_diameter"]["kilometers"]["estimated_diameter_max"].toString();
//    var hazard = init["is_potentially_hazardous_asteroid"].toString();
//    var date = init["close_approach_data"][0]["close_approach_date"];
//    List<String> data = [name, diameter, hazard, date];
//    return data;
  }
  Future<List> getJsonData2() async {
    var url1 = await http.get(url + '/training.Rhymes/stop/');

  }


  var appColors = [Color.fromRGBO(99, 138, 223, 1.0), Color.fromRGBO(231, 129, 109, 1.0), Color.fromRGBO(111, 194, 173, 1.0)];
  var cardIndex = 0;
  ScrollController scrollController;
  var currentColor = Color.fromRGBO(231, 129, 109, 1.0);

  var cardsList = [CardItemModel("Tactile Issues", Icons.info),CardItemModel("Fixations", Icons.info),CardItemModel("Occupational Therapy", Icons.info)];

  AnimationController animationController;
  ColorTween colorTween;
  CurvedAnimation curvedAnimation;

//  @override
//  void initState() {
//    super.initState();
//    scrollController = new ScrollController();
//  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return new Scaffold(
      backgroundColor: currentColor,
      appBar: new AppBar(
        leading: GestureDetector(
          child: Icon(
            Icons.arrow_back,
          ),
          onTap: () {
            Navigator.of(context).pushReplacementNamed('/home');
          },
        ),
        title: new Text("AUSCARE-Player", style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w600, letterSpacing: 2.0),),
        backgroundColor: currentColor,
        centerTitle: true,
        elevation: 0.0,
      ),
      body: new Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 64.0, vertical: 20.0),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0.0,16.0,0.0,12.0),
                      child: Text("Hello, Aryan's Guardian.", style: TextStyle(fontSize: 30.0, color: Colors.white, fontWeight: FontWeight.w400),),
                    ),
                    Text("Select the rhyme video to play on glass!", style: TextStyle(color: Colors.white),),
                  ],
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: height/1.6,
                  child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 3,
                    controller: scrollController,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, position) {
                      return GestureDetector(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Card(
                            child: Container(
                              width: width/1.42,
                              height: height/2.2,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Icon(cardsList[position].icon, color: appColors[position],),
                                        Icon(Icons.more_vert, color: Colors.grey,),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                                          child: Text("${cardsList[position].cardTitle}", style: TextStyle(fontSize: 28.0),),
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

                          animationController = AnimationController(vsync: this, duration: Duration(milliseconds: 500));
                          curvedAnimation = CurvedAnimation(parent: animationController, curve: Curves.fastOutSlowIn);
                          animationController.addListener(() {
                            setState(() {
                              currentColor = colorTween.evaluate(curvedAnimation);
                            });
                          });

                          if(details.velocity.pixelsPerSecond.dx > 0) {
                            if(cardIndex>0) {
                              cardIndex--;
                              colorTween = ColorTween(begin:currentColor,end:appColors[cardIndex]);
                            }
                          }else {
                            if(cardIndex<2) {
                              cardIndex++;
                              colorTween = ColorTween(begin: currentColor,
                                  end: appColors[cardIndex]);
                            }
                          }
                          setState(() {
                            scrollController.animateTo((cardIndex)*256.0, duration: Duration(milliseconds: 500), curve: Curves.fastOutSlowIn);
                          });

                          colorTween.animate(curvedAnimation);

                          animationController.forward( );

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
    );
  }
}