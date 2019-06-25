import 'package:flutter_web/gestures.dart';
import 'package:flutter_web/material.dart';
import 'package:landing_page/nav_bar.dart';
import 'package:landing_page/responsive_layout.dart';
import 'package:landing_page/search.dart';
import 'package:landing_page/sendbtn.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*0.6,
      decoration: BoxDecoration(
        color: Colors.black87
          /*gradient:
              LinearGradient(colors: [Color(0xFFF8FBFF), Color(0xFFFCFDFD)])*/),
      child: Scaffold(
        backgroundColor: Colors.black87,
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[NavBar(), Body()],
          ),
        ),
      ),
    );
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      largeScreen: LargeChild(),
      smallScreen: SmallChild(),
    );
  }
}


class LargeChild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      color: Colors.black87,
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          FractionallySizedBox(
            alignment: Alignment.centerLeft,
            heightFactor: 0.6,
            child: Opacity(opacity: 0.2,
              child: Image.network(
                "assets/fondo.png",
                scale: 0.7,
              ),
            ),
          ),
          FractionallySizedBox(
            alignment: Alignment.centerLeft,
            widthFactor: 0.6,
            child: Padding(
              padding: EdgeInsets.only(left: 48),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 50),
                  RichText(
                    text: TextSpan(
                      text: "Hi there! My name is  ",
                      style: TextStyle(
                          fontSize: 24,
                          color: Colors.deepPurple,
                          fontFamily: "Roboto-Regular"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only( top: 20),
                    child: Text(
                      "Cristian Diaz",
                      style: TextStyle(
                        fontSize: 47,
                        color: Colors.white,
                        fontFamily: "Roboto-Medium",
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text("Web & Mobile Developer."),
                  Text("Skills:Flutter, Firebase, Vuejs, C++, Unity, Unreal engine",style: TextStyle(fontSize: 30,fontFamily: "Roboto-Regular",color: Color(0xFFAAAAAA)),)
                ],
              ),
            ),
          ),
          Positioned(bottom: 25,right: 15,child: Text("Cristian-diaz.dev - © 2019",style: TextStyle(color: Color(0xFFAAAAAA),fontSize: 16,fontFamily: "Roboto-Regular"),),)
        ],
      ),
    );
  }
}

class SmallChild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(40),
        child: Stack(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Hello",
                  style: TextStyle(
                      fontSize: 60,
                      fontFamily: "Roboto-Bold",
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF8591B0)),
                ),
                RichText(
                  text: TextSpan(
                      text: "Wellcome To ",
                      style: TextStyle(
                          fontSize: 60,
                          color: Color(0xFF8591B0),
                          fontFamily: "Roboto-Medium"),
                      children: [
                        TextSpan(
                            text: "Britu",
                            style: TextStyle(
                                fontSize: 60,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Roboto-Bold",
                                color: Colors.black87))
                      ]),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12, top: 20),
                  child: Text(
                    "LET'S EXPLORE THE WORLD",
                    style: TextStyle(
                      fontFamily: "Roboto-Regular",
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Center(
                  child: Image.network("", scale: 1),
                ),
                SizedBox(
                  height: 32,
                ),
                Search(),
                SizedBox(
                  height: 30,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
