import 'table.dart';
import 'package:bustem/wagerAlert.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


//void main() => runApp(thirdScreen());

var deskH_t = SizeConfig.width/8;    //top height
var deskH_b = SizeConfig.width/6;    //bottom height
var deskW_l = SizeConfig.height/5;    //left width
var deskW_r = SizeConfig.height/5;     //right width

class thirdScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'MTCORSVA'),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: thirdPage(),
      ),
    );
  }
}

class thirdPage extends StatefulWidget {
  @override
  _thirdPageState createState() => _thirdPageState();
}

class _thirdPageState extends State<thirdPage> {
 // static var _image = AssetImage('assets/images/poker-table.jpg');
  @override
  Widget build(BuildContext context) {

    return MaterialApp(debugShowCheckedModeBanner: false,home: Container(color: Colors.black,
      child: Container(margin: EdgeInsets.only(top: 20),child:
        Row(crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            /*Container(margin: EdgeInsets.only(top: 0, left: 0),
              child: Text(money.getPaseName(), style: TextStyle(fontSize: 29, fontWeight: FontWeight.bold,color: Color.fromRGBO(255, 220, 80, 1),fontFamily: 'MTCORSVA',decoration: TextDecoration.none),),
            ),*/
  //TODO PUT WAGER
            Container(margin: EdgeInsets.only(top: 0,left: 50),
              child: Text('Stack :  ${money.getMoney()} \$', style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold,color: Color.fromRGBO(255, 220, 75, 1),fontFamily: 'MTCORSVA',decoration: TextDecoration.none),),
            ),
            Container(margin: EdgeInsets.only(top: 0,left: 270),
              child: Text('Total Wager : 255 \$', style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold,color: Color.fromRGBO(255, 220, 70, 1),fontFamily: 'MTCORSVA',decoration: TextDecoration.none),),
            ),
          ],),
      )

    ),
    );
  }
}

class SizeConfig{
  static MediaQueryData queryData;
  static double width;
  static double height;

  void init(BuildContext context){
    queryData = MediaQuery.of(context);
    width = queryData.size.width;
    height = queryData.size.height;
  }
}





