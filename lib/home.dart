import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'expansion_panel..dart';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text("Design Samples"),
      ),
      body: Column(
        // mainAxisAlignment:MainAxisAlignment.spaceBetween,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            //  padding: EdgeInsets.only(top:50),
            child: Lottie.asset('assets/images/56142-festival-calendar.json',
                repeat: true,
                reverse: true,
                animate: true,
                height: height * 0.50,
                width: width),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              TextLiquidFill(
                boxHeight: 100,
                text: 'Flutter',
                waveColor: Colors.blueAccent,
                boxBackgroundColor: Colors.white,
                textStyle: TextStyle(
                  fontSize: 45.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              AnimatedTextKit(
                isRepeatingAnimation: true,
                animatedTexts: [
                  TypewriterAnimatedText('Cross application Platform',
                      textStyle: TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 14.0,
                        letterSpacing: 1,
                        fontWeight: FontWeight.w900,
                      )),
                ],
                onTap: () {
                  print("Tap Event");
                },
              ),
            ],
          ),
          TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ExpansionTileCardDemo()));
              },
              child: Text("Expansion",style:TextStyle(color: Colors.white)),
              style: TextButton.styleFrom(
                backgroundColor: Colors.blueAccent,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5.0))),
              ))
        ],
      ),
    );
  }
}
