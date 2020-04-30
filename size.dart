//TODO bad bakhti asli haminjast :D
//list az size haye dast ha ke che ghadr az chap va bala fasele dashte bashan
class size{
  int playerNo;

  size(this.playerNo);
  List<double> tops(){
    if(playerNo==10){
      return [135,135,48,230,43,235,43,230,48,235];
    }else if(playerNo==9){
      return [113,113,150,240,245,145,286,284,115];
    }else if(playerNo==8){
      return [113,113,150,240,245,145,286,284];
    }else if(playerNo==7){
      return [113,113,150,240,245,145,286];
    }else if(playerNo==6){
      return [113,113,150,240,245,145];
    }else if(playerNo==5){
      return [113,150,240,245,145];
    }else if(playerNo==4){
      return [150,240,245,145];
    }else if(playerNo==3){
      return [145,150,240];
    }else if(playerNo==2){
      return [150,240,];
    }
  }
  List<double> lefts(){
    if(playerNo==10){
      return [60,570,160,160,250,355,355,460,460,250];
    }else if(playerNo==9){
      return [270,460,185,545,185,545,270,460,365];
    }else if(playerNo==8){
      return [270,460,185,545,185,545,270,460];
    }else if(playerNo==7){
      return [270,460,185,545,185,545,270];
    }else if(playerNo==6){
      return [270,460,185,545,185,545];
    }else if(playerNo==5){
      return [270,185,545,185,545];
    }else if(playerNo==4){
      return [185,545,185,545];
    }else if(playerNo==3){
      return [545,185,545];
    }else if(playerNo==2){
      return [185,545];
    }
  }

  List<double> top(){                     //bubbles top
    if(playerNo==10){
      return [155,155,68,250,63,255,63,250,68,255];
    }else if(playerNo==9){
      return [100,100,160,260,260,160,359,359,85];
    }else if(playerNo==8){
      return [100,100,160,260,260,160,359,359];
    }else if(playerNo==7){
      return [100,100,160,260,260,160,359];
    }else if(playerNo==6){
      return [100,100,160,260,260,160];
    }else if(playerNo==5){
      return [100,160,260,260,160];
    }else if(playerNo==4){
      return [160,260,260,160];
    }else if(playerNo==3){
      return [160,160,260];
    }else if(playerNo==2){
      return [160,260,];
    }
  }
  List<double> left() {             //bubbles left
    if (playerNo == 10) {
      return [60,570,150,150,255,360,360,465,465,255];
    } else if (playerNo == 9) {
      return [130, 455, 45, 540, 45, 540, 130, 455, 290];
    } else if (playerNo == 8) {
      return [130, 455, 45, 540, 45, 540, 130, 455];
    } else if (playerNo == 7) {
      return [130, 455, 45, 540, 45, 540, 130];
    } else if (playerNo == 6) {
      return [ 130, 455, 45, 540, 45, 540];
    } else if (playerNo == 5) {
      return [130, 45, 540, 45, 540];
    } else if (playerNo == 4) {
      return [ 45, 540, 45, 540];
    } else if (playerNo == 3) {
      return [540, 45, 540];
    } else if (playerNo == 2) {
      return [45, 540];
    }
  }
  List<double> texleft() {
    if (playerNo == 10) {
      return [135, 460, 50, 545, 50, 545, 135, 460, 295, 295];
    } else if (playerNo == 9) {
      return [135, 460, 50, 545, 50, 545, 135, 460, 295];
    } else if (playerNo == 8) {
      return [135, 460, 50, 545, 50, 545, 135, 460];
    } else if (playerNo == 7) {
      return [135, 460, 50, 545, 50, 545, 135];
    } else if (playerNo == 6) {
      return [135, 460, 50, 545, 50, 545];
    } else if (playerNo == 5) {
      return [135, 50, 545, 50, 545];
    } else if (playerNo == 4) {
      return [50, 545, 50, 545];
    } else if (playerNo == 3) {
      return [545, 50, 545];
    } else if (playerNo == 2) {
      return [50, 545];
    }
  }
  List<double> textop() {
    if (playerNo == 10) {
      return [85,85,145,245,245,145,354,354,70,375];
    } else if (playerNo == 9) {
      return [85,85,145,245,245,145,354,354,70];
    } else if (playerNo == 8) {
      return [85,85,145,245,245,145,354,354];
    } else if (playerNo == 7) {
      return [85,85,145,245,245,145,354];
    } else if (playerNo == 6) {
      return [85,85,145,245,245,145];
    } else if (playerNo == 5) {
      return [85,145,245,245,145];
    } else if (playerNo == 4) {
      return [145,245,245,145];
    } else if (playerNo == 3) {
      return [145,145,245];
    } else if (playerNo == 2) {
      return [145,245];
    }
  }

}

