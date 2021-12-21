import 'package:flutter/material.dart';

class ResultScreen extends StatefulWidget {
  String result;
  String Des;
  String msg;
  ResultScreen(this.result,this.Des,this.msg);
  @override
  _ResultScreenState createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF2F2E3A),
      appBar: AppBar(
        backgroundColor: Color(0xFF24232F),
        title: Text(
          "BMI RESULT",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white
        ),),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 1,
              child: Center(
                child: Text(
                  "Your Result",
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                  ),
                ),
              ),
          ),
          Expanded(
            flex: 5,
              child: Container(
                margin: EdgeInsets.all(20.0),
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Color(0xFF24232F),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      widget.result,
                      style: TextStyle(
                        color: Colors.deepPurpleAccent,
                        fontSize: 35.0,
                      ),
                    ),
                    Center(
                      child: Text(
                          widget.Des,
                        style: TextStyle(
                          color: Colors.amber,
                          fontSize: 30.0,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20,top: 5,bottom: 10),
                      child: Text(
                          widget.msg,
                          style: TextStyle(
                            fontWeight: FontWeight.w300,
                            color: Colors.white,
                            fontSize: 30.0,
                          ),
                        ),
                      ),
                  ],
                ),
              ),
          ),
          Expanded(
              child: GestureDetector(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Container(
                  padding: EdgeInsets.only(bottom: 10.0),
                  margin: EdgeInsets.only(top: 10.0),
                  width: double.infinity,
                  height: 80.0,
                  color: Colors.deepPurpleAccent,
                  child: Center(
                    child: Text(
                      "RECALCULATE",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25.0
                      ),
                    ),
                  ),

                ),
              ))
        ],
      ),
    );
  }
}
