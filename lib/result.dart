import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quizapp/home.dart';
import 'package:quizapp/quiz.dart';

class Result extends StatelessWidget {

  int correct = 0, totalQue = 0, notAttempted = 0, score = 0, attempted = 0;

  Result({this.attempted,  this.totalQue, this.correct, this.notAttempted, this.score});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.brown[700],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Container(
                padding: EdgeInsets.symmetric(),
                  child: Text('Your Score is ${score} of ${(10*totalQue)}',
                    style: TextStyle(
                      color: Colors.cyanAccent,
                      fontSize: 26.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
              ),
            ),
            SizedBox(height: 20.0,),
            Container(
                child: Text('Attempted : $attempted',
                  style: TextStyle(
                    color: Colors.greenAccent,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,

                  ),
                )
            ),
            SizedBox(height: 10.0,),
            Container(
                child: Text('Not Attempted : ${notAttempted}',
                  style: TextStyle(
                    color: Colors.greenAccent,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,

                  ),
                )
            ),
            SizedBox(height: 10.0,),
            Container(
                child: Text('Correct : $correct',
                  style: TextStyle(
                    color: Colors.greenAccent,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,

                  ),
                )
            ),
            SizedBox(height: 10.0,),
            Container(
                child: Text('Incorrect : ${totalQue-correct-notAttempted}',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.greenAccent,
                    fontWeight: FontWeight.bold,

                  ),
                )
            ),
            SizedBox(height: 80.0,),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(context, MaterialPageRoute(
                  builder: (context) => Quiz(),
                ));
              },
              child: Container(
                padding: EdgeInsets.fromLTRB(40.0, 15.0, 40.0, 15.0),
                decoration: BoxDecoration(
                  color: Colors.brown[50],
                  borderRadius: BorderRadius.circular(40.0),
                ),
                child: Text('Attempt Quiz Again',
                  style: TextStyle(
                    color: Colors.brown[600],
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
            SizedBox(height: 30.0,),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(context, MaterialPageRoute(
                  builder: (context) => Home(),
                ));
              },
              child: Container(
                padding: EdgeInsets.fromLTRB(40.0, 15.0, 40.0, 15.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.brown[50], style: BorderStyle.solid),
                  borderRadius: BorderRadius.circular(40.0),
                ),
                child: Text('Go to Home',
                  style: TextStyle(
                    color: Colors.brown[50],
                    fontSize: 18.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
