
import 'package:bustem/main.dart';
import 'package:bustem/oneHand.dart';
import 'package:bustem/wagerAlert.dart';
import 'package:bustem/weger.dart';
import 'package:flutter/material.dart';
import 'cards.dart';
import 'size.dart';

class board {
  List<Cards> list;

  board(this.list);

  //double handSize = 10;
  wager thisWager = new wager();


  Widget hands() {
    int n = ((list.length - 5) / 2).toInt();
    size Size = new size(n);
    List<double> lefts = Size.lefts();
    List<double> tops = Size.tops();

    lefts = Size.lefts();
    tops = Size.tops();

    List<double> left = Size.left();
    List<double> top = Size.top();

    List<double> texleft = Size.texleft();
    List<double> textop = Size.textop();
    double handSize = 50;


    return Container(
      child: Stack(
        children: <Widget>[
          for (int i = 0; i < n; i++)
            Stack(
              children: <Widget>[
                leftHands(i, list),
                /*if ((i % 2) != 0)(rightHands(i, list))
                else( leftHands(i, list)),*/

                Container(
                  margin: EdgeInsets.only(left: left[i]-20 , top: top[i]+20),
                  width: handSize + 45,
                  height: handSize ,

                  child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)),color: Color.fromRGBO(255, 220, 60, 1)),
                    ),
                  ),

/*
                if (thisWager.getWager(i) != 0)
                  Container(
                      margin: EdgeInsets.only(
                          left: texleft[i] + 60, top: textop[i] - 14),
                      width: handSize + 40,
                      height: handSize + 20,
                      child: Column(
                        children: <Widget>[
                          Text(
                            oddCalculator.getOdd(i).toStringAsFixed(2) +
                                '%' +
                                '\n' +
                                thisWager.getWager(i).toString() +
                                '\$' +
                                '\n' +
                                returns
                                    .returnCalculator(oddCalculator.getOdd(i),
                                        thisWager.getWager(i).toDouble())
                                    .toStringAsFixed(2) +
                                '\$',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                fontFamily: 'MTCORSVA'),
                          ),
                        ],
                      ))
                else
                  Container(
                    margin: EdgeInsets.only(
                        left: texleft[i] + 60, top: textop[i] - 8),
                    width: handSize + 40,
                    height: handSize + 20,
                    child: Text(
                      oddCalculator.getOdd(i).toStringAsFixed(2) + '%',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          fontFamily: 'MTCORSVA'),
                    ),
                  ),*/
              ],
            )
        ],
      ),
    );
  }

  Widget flap() {
    int n = list.length - 5;
    return // Transform.rotate(angle: math.pi/2, child:
        Container(height: 53.5, margin: const EdgeInsets.only(left: 230, top: 160),
          child: Row(
            children: <Widget>[
              Image.asset('assets/images/${list[n].id}.png'),
              Container(
                width: 5,
              ),
              Image.asset('assets/images/${list[n + 1].id}.png'),
              Container(
                width: 5,
              ),
              Image.asset('assets/images/${list[n + 2].id}.png'),
            ],
          ),
        );
  }

  Widget turn() {
    int n = list.length;
    return Container(

      height: 53.5,
      margin: const EdgeInsets.only(left: 365, top: 160),
      child: Row(
        children: <Widget>[
          Image.asset('assets/images/${list[n - 2].id}.png'),
        ],
      ),
    );
  }

  Widget river() {
    int n = list.length;
    return Container(

      height: 53.5,
      margin: const EdgeInsets.only(left: 413, top: 160),
      child: Row(
        children: <Widget>[
          Image.asset('assets/images/${list[1].id}.png'),
        ],
      ),
    );
  }
}
