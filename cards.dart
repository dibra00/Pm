import 'size.dart';
//class card ha ba adad va khal va id
class Cards{
  String _rank;
  String _suit;
  String _id;


  Cards(this._rank, this._suit, this._id);


  String get suit => _suit;

  set suit(String value) {
    _suit = value;
  }

  /*
  * String get deskH_t => _deskH_t;

  set suit(String value) {
    _suit = value;
  }
  * */

  String get id => _id;

  set id(String value) {
    _id = value;
  }

  String get rank => _rank;

  set rank(String value) {
    _rank = value;
  }


}

bubbles(int i){
  var b1 = 'assets/images/speech-bubble.png';
  var b2 = 'assets/images/speech-bubble1.png';
  var b3 = 'assets/images/speech-bubble2.png';
  var b4 = 'assets/images/speech-bubble3.png';
  var b5 = 'assets/images/comment.png';
  var b6 = 'assets/images/comment1.png';

  if((i%2)!=0 && i<7)
    return b1;

  else if((i<6))
    return b3;

  else if(i==6)
    return b2;

  else if(i==7)
    return b4;

  else if(i==8)
    return b5;

  else if(i==9)
    return b6;

}



