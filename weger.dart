class wager{
  static List<int> wagers=[];



   void create(int n){
     wagers.clear();
    for(int i=0;i<n;i++){

      wagers.add(0);
    }
  }
  int getWager(int n){

    return wagers[n];
  }
  void setWager(int i,int wager){
    wagers[i]=wager;
  }
  List<int> getAll(){
    return wagers;
  }

}