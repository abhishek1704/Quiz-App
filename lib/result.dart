import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quizapp/quiz.dart';

class Result extends StatelessWidget {

  int correct = 0, totalQue = 0, notAttempted = 0, score = 0, attempted = 0;

  Result({this.attempted,  this.totalQue, this.correct, this.notAttempted, this.score});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.deepOrange[200],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Container(
                padding: EdgeInsets.symmetric(),
                  child: Text('Your Score : ${score}/${(10*totalQue)}',
                    style: TextStyle(
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
                    fontSize: 20.0,
                  ),
                )
            ),
            SizedBox(height: 10.0,),
            Container(
                child: Text('Not Attempted : ${notAttempted}',
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                )
            ),
            SizedBox(height: 10.0,),
            Container(
                child: Text('Correct : $correct',
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                )
            ),
            SizedBox(height: 10.0,),
            Container(
                child: Text('Incorrect : ${totalQue-correct-notAttempted}',
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                )
            ),
          ],
        ),
      ),
    );
  }
}
