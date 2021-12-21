import 'dart:math';

class CalculateResult{

 CalculateResult(this.height, this.weight);
  final int height;
  final int weight;
  late double result;


  calculateResult(){
   result= weight / pow(height/100,2);
    return result.toStringAsFixed(1);
  }
  getmsg(){
    if(result>25){
      return "OverWeight";
    }
    else if(result>18.5){
      return "NormalWeight";
    }
    else if(result<18.5){
      return "UnderWeight";
    }
  }

  getDescription(){

    if(result>25){

      return "you have a higher weight then normal, try to lose your weight through ay activity you want 🏋🏻 🚴🏻" ;
    }
    else if(result>18.5){

      return "you have a normal weight keep it  💪🏻 ";
    }
    else if(result<18.5){

      return "Your weight is less than normal weight so please gain some weight 🥗 🥩";
    }
  }
}