import 'package:flutter/material.dart';
import 'cards.dart';
import 'odds.dart';
import 'returnMoney.dart';
import 'selectedHand.dart';
import 'size.dart';
import 'wagerAlert.dart';
import 'weger.dart';

//olgo koli yek daste ke do ta card to yek container va darsad ham zireshe
//TODO fix size******************

class rightHands extends StatefulWidget {
  int i;
  List<Cards> CardList;

  rightHands(this.i, this.CardList);

  @override
  _rightHandsState createState() => _rightHandsState(i, CardList);
}

class _rightHandsState extends State<rightHands> {
  selectedHand handNumber = new selectedHand();
  returnMoney returns = new returnMoney();
  int i;
  List<Cards> CardList;
  odds oddPercent = new odds();
  double handSize = 50;
  wager thisWager = new wager();
  bool isClick = false;

  _rightHandsState(this.i, this.CardList);

  @override
  Widget build(BuildContext context) {
    int n = ((CardList.length - 5) / 2).toInt();
    size Size = new size(n);
    List<double> lefts = Size.lefts();
    List<double> tops = Size.tops();
    return //Container(
      //TODO size goshi ro bezan
//bayaf full screen bashe
        //width: 670,
        //height: 400,
        //color: Colors.red,

        //child:
    Stack(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: lefts[i], top: tops[i]),
              child: InkWell(

              onTap: () {
                //TODO select shodan dast
                handNumber.setSelect(i);
                setState(() {
                  isClick = !isClick;
                });
              },
              child: Container(
                child: Stack(
                  children: <Widget>[
                    //do ta card
                    Container(
                      child: Image.asset('assets/images/${CardList[2 * i].id}.png'),
                      margin: const EdgeInsets.only(right: 10, bottom: 13),
                    ),
                    Container(
                      child:
                      Image.asset('assets/images/${CardList[(2 * i) + 1].id}.png'),
                      margin: const EdgeInsets.only(left: 10, top: 13),
                    ),
                  ],
                ),
                width: handSize+10,
                height: handSize+25,
               // color: Colors.red,
              ),

            ),),
            Container(
              child: isClick ? wagerAlert(i) : Text(""),
              margin: EdgeInsets.only(top: 20,left:0),
            ),
          ],
        );//);
  }
}

class leftHands extends StatefulWidget {
  int i;
  List<Cards> CardList;


  leftHands(this.i, this.CardList);

  @override
  _leftHandsState createState() => _leftHandsState(i,CardList);
}

class _leftHandsState extends State<leftHands> {
  selectedHand handNumber = new selectedHand();
  returnMoney returns = new returnMoney();
  int i;
  List<Cards> CardList;

  _leftHandsState(this.i, this.CardList);

  odds oddPercent = new odds();
  double handSize = 50;
  wager thisWager = new wager();
  bool isClick = false;


  @override
  Widget build(BuildContext context) {
    int n = ((CardList.length - 5) / 2).toInt();
    size Size = new size(n);
    List<double> lefts = Size.lefts();
    List<double> tops = Size.tops();
    return Container(

      //TODO size goshi ro bezan
//bayaf full screen bashe
        width: 670,
        height: 400,
        child: Stack(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: lefts[i], top: tops[i]),
              child:InkWell(

              onTap: () {
                //TODO select shodan dast
                handNumber.setSelect(i);
                setState(() {
                  isClick = !isClick;
                });
              },
              child: Container(
              child: Stack(
                      children: <Widget>[
                        //do ta card
                        Container(
                          child: Image.asset('assets/images/${CardList[2 * i].id}.png'),
                          margin: const EdgeInsets.only(left: 10, bottom: 13),
                        ),
                        Container(
                          child:
                          Image.asset('assets/images/${CardList[(2 * i) + 1].id}.png'),
                          margin: const EdgeInsets.only(right: 10, top: 13),
                        ),
                      ],
                    ),
                width: handSize+8,
                height: handSize+25,
              ),

            ),),
            Container(
              child: isClick ? wagerAlert(i) : Text(""),
              margin: EdgeInsets.only(top: 100),
            ),
          ],
        ));
  }
}
