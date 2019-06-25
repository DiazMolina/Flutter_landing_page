import 'package:flutter_web/gestures.dart';
import 'package:flutter_web/material.dart';
import 'package:landing_page/responsive_layout.dart';
class SendBtn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        height: 40,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFFC86DD7),
              Color(0xFF3023AE),
            ],begin: Alignment.bottomRight,end: Alignment.topLeft
          ),
          borderRadius: BorderRadius.circular(18),
          boxShadow: [
            BoxShadow(
              color: Color(0xFF6078EA).withOpacity(0.3),offset: Offset(0.0,8.0),
              blurRadius: 8.0
            )
          ]
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: (){},
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  if(!ResponsiveLayout.isSmallScreen(context))
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("Notify",style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Roboto-Regular",
                        fontSize: ResponsiveLayout.isSmallScreen(context)?12:ResponsiveLayout.isMediumScreen(context)?12:16,
                        letterSpacing: 1.0
                      ),),
                      SizedBox(
                        width: ResponsiveLayout.isSmallScreen(context)?4:ResponsiveLayout.isMediumScreen(context)?6:8,
                      ),
                      Icon(Icons.send,color: Colors.white,
                        size: ResponsiveLayout.isSmallScreen(context)?12: ResponsiveLayout.isMediumScreen(context)?12:22,
                      )
                    ],
                  )
                  else Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.send,color: Colors.white,
                        size: ResponsiveLayout.isSmallScreen(context)?12: ResponsiveLayout.isMediumScreen(context)?12:20,
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
