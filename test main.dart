import 'package:flutter/material.dart';
import 'cards.dart';
import 'board.dart';
import 'cardsList.dart';
import 'ThirdScreen.dart';

void main() {
  runApp(First());
}

int playerNo = 4;
CardList handCard = new CardList();
List<Cards> chooseCards = handCard.cardlist(playerNo);
board Board = new board(chooseCards);

class First extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "two",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "MTCORSVA"),
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

          body: Stack(
            children: <Widget>[
              //TODO size ha ro andaze kon!!!!!
              //TODO ina bayad be tartib to marahel mokhtalef bazi baid
              thirdScreen(),
              Board.hands(),
              Board.flap(),
              Board.turn(),
              Board.river(),
            ],
          )),
    );
  }
}
