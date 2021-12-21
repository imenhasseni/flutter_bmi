import 'package:flutter/material.dart';
import 'package:flutter_bmi/calResult.dart';
import 'package:flutter_bmi/resultScreen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum Gender{
  male,
  female,
}
void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  Widget build(BuildContext context){
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xFF24232F),
        accentColor: Color(0xFF1F1E29),
        scaffoldBackgroundColor: Color(0xFF2F2E3A),

      ),
      debugShowCheckedModeBanner: false,
      home: InputScreen(),
    );
  }
}

class  InputScreen extends StatefulWidget {
  @override
_InputScreenState  createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {

  Color inactiveColor =Color(0XFF24232F);
  Color activeColor = Colors.deepPurpleAccent;
  int height =180;
  int weight =30;
  int age =15;
  var selectedGender;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF24232F),
        title: Center(
          child: Text(
              "BMI",
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                       selectedGender=Gender.male;
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.all(10.0),
                      padding: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0),
                        color:selectedGender==Gender.male?activeColor:inactiveColor
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            FontAwesomeIcons.male,
                            color: Colors.white,
                            size: 45.0,
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text("male",
                          style: TextStyle(
                            color: Colors.amber,
                            fontSize: 20.0,
                            fontWeight: FontWeight.w500,
                          ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender=Gender.female;
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.all(10.0),
                      padding: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                          color:selectedGender==Gender.female?activeColor:inactiveColor
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            FontAwesomeIcons.female,
                            color: Colors.white,
                            size: 45.0,
                          ),
                          SizedBox(
                            height: 10.0 ,
                          ),
                          Text("female",
                            style: TextStyle(
                              color: Colors.amber,
                              fontSize: 20.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),

                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                color: inactiveColor,
              ),
             child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("HEIGHT",
                  style:TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueGrey,
                  ) ,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  mainAxisAlignment: MainAxisAlignment.center,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(
                      height.toString(),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30.0,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "cm",
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                  activeTrackColor: Colors.white,
                  overlayColor: Colors.purpleAccent[300],
                  inactiveTrackColor: Colors.grey,
                  thumbShape: RoundSliderThumbShape(
                    enabledThumbRadius: 16.0
                  ),
                  overlayShape: RoundSliderOverlayShape(
                    overlayRadius: 30.0,
                  ),
                  thumbColor: Colors.deepPurpleAccent,
                  ),
                    child: Slider(
                  value:height.toDouble(),
                  min: 100.0,
                  max: 250.0,
                  onChanged: (double v){
                    setState(() {
                     height=v.round();
                    });
                  }
                ))
              ],
            ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(10.0),
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                      color: inactiveColor
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Age",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 8.0,
                        ),
                        Text(
                          age.toString(),
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                         ),
                          ),
                        SizedBox(
                          height: 8.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.amber,
                              child: IconButton(
                               icon: Icon(
                                Icons.add,
                                color: Colors.white,
                               ) ,
                                onPressed: (){
                                setState(() {
                                  age++;
                                });
                                },
                              ),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.blueGrey,
                              child: IconButton(
                                icon: Icon(
                                  Icons.remove,
                                  color: Colors.white,
                                ) ,
                                onPressed: (){
                                  setState(() {
                                    if(age>5){
                                    age--;
                                    }
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(10.0),
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0),
                        color: inactiveColor
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Weight",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 8.0,
                        ),
                        Text(
                          weight.toString(),
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        SizedBox(
                          height: 8.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.amber,
                              child: IconButton(
                                icon: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ) ,
                                onPressed: (){
                                  setState(() {
                                    weight++;
                                  });
                                },
                              ),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.blueGrey,
                              child: IconButton(
                                icon: Icon(
                                  Icons.remove,
                                  color: Colors.white,
                                ) ,
                                onPressed: (){
                                  setState(() {
                                    if(weight>10){
                                      weight--;
                                    }
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
              onTap: () { CalculateResult obj =
              CalculateResult(height, weight);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResultScreen(
                      obj.calculateResult(),obj.getmsg(),obj.getDescription()

                  ),
                ),
              );
              },
              child: Container(
                padding: EdgeInsets.only(bottom: 10.0),
                margin: EdgeInsets.only(top: 10.0),
                width: double.infinity,
                height: 80.0,
                color: Colors.deepPurpleAccent,
                child: Center(
                  child: Text(
                    "CALCULATE",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25.0,

                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}