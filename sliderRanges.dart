class sliderRange{
  static List<double> ranges=[];



  void create(int n){
    ranges.clear();
    for(int i=0;i<n;i++){

      ranges.add(0);
    }
  }
  double getMin(int n){
    return ranges[n];
  }
  void setMin(int i,double range){
    ranges[i]=range;
  }
  List<double> getAllMin(){
    return ranges;
  }

}