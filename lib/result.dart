import 'package:flutter/material.dart';
import 'package:quizapp/quiz.dart';

class Result extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Center(
            child: Container(
                padding: EdgeInsets.fromLTRB(0.0, 100.0, 0.0, 100.0),
                child: Text(' Result ',
                  style: TextStyle(
                    fontSize: 36.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
            ),
          ),
          SizedBox(height: 40.0,),
          Container(
              child: Text('Attempted : ',
                style: TextStyle(
                  fontSize: 20.0,
                ),
              )
          ),
          SizedBox(height: 10.0,),
          Container(
              child: Text('Incorrect : ',
                style: TextStyle(
                  fontSize: 20.0,
                ),
              )
          ),
          SizedBox(height: 10.0,),
          Container(
              child: Text('Correct : ',
                style: TextStyle(
                  fontSize: 20.0,
                ),
              )
          ),
        ],
      ),
    );
  }
}
