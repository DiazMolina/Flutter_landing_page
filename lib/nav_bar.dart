import 'package:flutter_web/gestures.dart';
import 'package:flutter_web/material.dart';
import 'responsive_layout.dart';

class NavBar extends StatelessWidget {
  final navlinks =["About","Work","Contact"];
  List<Widget> navItem(){
    return navlinks.map((text){
      return Padding(
        padding: EdgeInsets.only(left: 18),
        child: Text(text,style: TextStyle(color: Colors.white,fontFamily: "Roboto-Medium",),),
      );
    }).toList();
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 45, vertical: 38),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    gradient: LinearGradient(
                        colors: [Color(0xFFB06AB3), Color(0xFF4568DC)],
                        begin: Alignment.bottomRight,
                        end: Alignment.topLeft)),
                child: Center(
                  child: Text(
                    "D",
                    style: TextStyle(fontSize: 30, color: Colors.white,fontFamily: "Rooboto-Medium",fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(
                width: 16,
              ),
              Text(
                "Diaz",
                style: TextStyle(color: Colors.white,fontSize: 26,fontFamily: "Roboto-Medium",),
              )
            ],
          ),
          if(!ResponsiveLayout.isSmallScreen(context))
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                ...navItem()
              ]
            )
          else
            Image.network("assets/menu.png",width: 26,height: 26,color: Colors.black,)
        ],
      ),
    );
  }
}
