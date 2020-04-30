class Money{
  static double money=5000.0;
  static String paseName='start';
  void setMoney(double m){
    money=m;
    print("=================="+money.toString());
  }
  double getMoney (){
    return money;
  }
  void setPhaseName(String name){
    paseName=name;
  }
  String getPaseName(){
    return paseName;
  }
}