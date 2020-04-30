import 'package:bustem/main.dart';
import 'package:bustem/table.dart';
import 'package:flutter/material.dart';
import 'ThirdScreen.dart';
import 'cards.dart';
import 'board.dart';
import 'cardsList.dart';


CardList handCard = new CardList();
List<Cards> chooseCards = handCard.cardlist(playerNo);
board Board = new board(chooseCards);

class First extends StatefulWidget {
  @override
  _FirstState createState() => _FirstState();
}

class _FirstState extends State<First> {
  @override
  Widget build(BuildContext context) {
   thisWager.create(playerNo);
    ranges.create(playerNo);
    values.create(playerNo);
    oddCalculator.oddCalculator(chooseCards);
    return MaterialApp(
      title: "two",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: " MTCORSVA"),
      initialRoute: '/',
      routes: {
        '/': (context) => first(),

      },
    );
  }
}


bool how = true;

class first extends StatefulWidget {
  @override
  _firstState createState() => _firstState();
}

class _firstState extends State<first> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'first',
      home: Scaffold(
          body: Stack(children: <Widget>[
            thirdScreen(),
            table(),
            levels.levelUp(level),
            Container(
                padding: EdgeInsets.only(top: 350, left: 30),
                child: InkWell(
                  onTap: () {
                    if (level == 4) {
                      newGame();
                    } else {
                      setState(() {
                        level++;
                      });
                    }
                  },
                   child: Container(
                      width: 60,
                      height: 40,
                      color: Color.fromRGBO(255, 220, 80, 1),
                      child: Center(
                        child: Text(
                          "Flap",
                          style: TextStyle(
                              fontSize: 29,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'MTCORSVA',
                              decoration: TextDecoration.none),
                        ),
                    )),
              )),
        ],
      )),
    );
  }
}
