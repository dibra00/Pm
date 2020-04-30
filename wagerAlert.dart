import 'package:flutter/cupertino.dart';

import 'FirstScreen.dart';
import 'Money.dart';
import 'mainCrads.dart';
import 'returnMoney.dart';
import 'selectedHand.dart';
import 'sliderRanges.dart';
import 'sliderValue.dart';
import 'weger.dart';
import 'main.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

wager thisWager = new wager();
Money money = new Money();
sliderRange ranges = new sliderRange();
sliderValue values = new sliderValue();
returnMoney returns=new returnMoney();
double Min;
double Max;
bool beInRange = true;

class wagerAlert extends StatefulWidget {
  int i;

  wagerAlert(int I) {
    i = I;
    Min = ranges.getMin(i);
    Max = Min + money.getMoney();
    print(Min.toString() + "==========" + Max.toString());
    if (Min >= Max || values.getValue(i) < Min || values.getValue(i) > Max) {
      beInRange = false;
    }
  }

  @override
  _wagerAlertState createState() => _wagerAlertState(i);
}

class _wagerAlertState extends State<wagerAlert> {
  selectedHand handNumber = new selectedHand();
  int i;

  _wagerAlertState(this.i);

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(

        angle: 0,
        // Rotate sliders by 90 degrees
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
margin: EdgeInsets.only(left: 150),
              height: 60,
              width: 400,
              //color: Colors.red,
              child: Row(
                children: <Widget>[
                  /*Transform(
                      alignment: FractionalOffset.center,
                      // Rotate sliders by 90 degrees
                      transform: Matrix4.identity()
                        ..rotateZ(270 * 3.1415927 / 180),
                      child: */Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('w:'+'${values.getValue(i).round().toString()}', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Color.fromRGBO(255, 220, 80, 1),fontFamily: 'MTCORSVA',decoration: TextDecoration.none),),
                            Text('r:'+'${returns.returnCalculator(oddCalculator.getOdd(i), values.getValue(i)).round()}', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Color.fromRGBO(255, 220, 80, 1),fontFamily: 'MTCORSVA',decoration: TextDecoration.none),),
                          ]),//),

                  beInRange
                      ? Slider(
                          onChangeEnd: (double m) {

                              ranges.setMin(i, m);
                              thisWager.setWager(i, m.round());
                              money.setMoney(money.getMoney() - m.round());


                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => First()),
                              );
                          },
                          value: values.getValue(i),
                          min: Min,
                          //TODO set max money
                          max: Max,
                          divisions: 10000,

                          activeColor: Colors.amber,
                          inactiveColor: Colors.grey,
                          // label: ,
                          onChanged: (double newValue) {
                            setState(() {
                              values.setValue(i, newValue);
                            });
                          },
                        )
                      : Text("you have No Money" ,style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold,color: Color.fromRGBO(255, 220, 75, 1),fontFamily: 'MTCORSVA',decoration: TextDecoration.none),),
                  //Text(ranges.getMax(i).toString())
                ],
              ),)]));

  }
}
