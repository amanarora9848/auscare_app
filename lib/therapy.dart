import 'package:flutter/material.dart';
import 'CardItemModel.dart';
import 'dart:convert';
import 'dart:async';
import 'package:http/http.dart' as http;

void main() => runApp(Therapy());

class Therapy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: TherapyState(),
      backgroundColor: Colors.white,
    );
  }
}

class TherapyState extends StatefulWidget {
  @override
  _TherapyStateState createState() => _TherapyStateState();
}

class _TherapyStateState extends State<TherapyState> with TickerProviderStateMixin{
  //API interaction stuff.
  final String url="";
  @override
  void initState(){
    super.initState();
    this.getJsonData();
    scrollController = new ScrollController();
  }
  Future<List> getJsonData() async{
    var response = await http.get(Uri.encodeFull(url), headers: {"Accept": "application/json"});
    var init = json.decode(response.body)["near_earth_objects"][0];
    var name = init["name"];
    var diameter = init["estimated_diameter"]["kilometers"]["estimated_diameter_max"].toString();
    var hazard = init["is_potentially_hazardous_asteroid"].toString();
    var date = init["close_approach_data"][0]["close_approach_date"];
    List<String> data = [name, diameter, hazard, date];
    return data;
  }


    var appColors = [Color.fromRGBO(99, 138, 223, 1.0), Color.fromRGBO(231, 129, 109, 1.0), Color.fromRGBO(111, 194, 173, 1.0)];
    var cardIndex = 0;
    ScrollController scrollController;
    var currentColor = Color.fromRGBO(231, 129, 109, 1.0);

    var cardsList = [CardItemModel("Sensory Integration Therapy", Icons.account_circle),CardItemModel("Occupational Therapy", Icons.work),CardItemModel("Message Therapy", Icons.home)];

    var i1 = "Autism’s symptoms often include difficulty processing sensory information such as textures, sounds, smells, tastes, brightness and movement. These difficulties can make ordinary situations feel overwhelming. As such, they can interfere with daily function and even isolate individuals and their families. Sensory integration therapy, as practiced by occupational therapists, uses play activities in ways designed to change how the brain reacts to touch, sound, sight and movement.";
    var i2 = "Deep pressure massage for ASD relies on the massage therapist’s flat palm and fingers, rather than fingertips, and firm, long, strong strokes. To help with proprioceptive issues, it’s recommended that the massage therapist or caregiver explain in a soft, calming voice precisely which body part is being massaged.";
    var i3 = "Occupational therapists study human growth and development and a person’s interaction with the environment through daily activities. They are experts in the social, emotional, and physiological effects of illness and injury. This knowledge helps them promote skills for independent living in people with autism and other developmental disorders.";

    AnimationController animationController;
    ColorTween colorTween;
    CurvedAnimation curvedAnimation;

//    @override
//    void initState() {
//      super.initState();
//      scrollController = new ScrollController();
//    }

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
          title: new Text("AUSCARE-Therapies", style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w600, letterSpacing: 2.0),),
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
                      Text("See details for some of the common therapies related to autism.", style: TextStyle(color: Colors.white),),
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
                                      padding: const EdgeInsets.only(top: 20.0),
                                      child: Container(
                                        height: height/10,
                                        width: width,
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: <Widget>[
                                            Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Column(
                                                children: <Widget>[
                                                  new Text(
                                                    '',
                                                    style: new TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 15.0,
                                                    ),
                                                  ),
                                                ],
                                              ),
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
      );
    }
  }

