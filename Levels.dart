import 'package:bustem/wagerAlert.dart';

import 'finish.dart';
import 'cards.dart';
import 'cardsList.dart';
import 'main.dart';
import 'package:flutter/cupertino.dart';

import 'board.dart';

class Levels {
  List<Cards> chooseCards;

  Levels(this.chooseCards);






  Widget levelUp(int level) {
    board Board = new board(chooseCards);

    switch (level) {
      case 0:
        {
          money.setPhaseName('Per Flap');


          return Stack(
            children: <Widget>[
              Board.hands(),
            ],
          );
        }
        break;
      case 1:
        {
          money.setPhaseName('Flap');

          return Stack(
            children: <Widget>[
              Board.hands(),
              Board.flap(),
            ],
          );
        }
        break;
      case 2:
        {
          money.setPhaseName('Turn');

          return Stack(
            children: <Widget>[
              Board.hands(),
              Board.flap(),
              Board.turn(),
            ],
          );
        }
        break;
      case 3:
        {
          money.setPhaseName('River');

          return Stack(
            children: <Widget>[

              Board.hands(),
              Board.flap(),
              Board.turn(),
              Board.river(),
            ],
          );
        }
        break;
      case 4:{
        money.setPhaseName('Win');
        return finish();
      }break;
    }
  }
}
