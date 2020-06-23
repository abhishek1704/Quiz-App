import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quizapp/quiz.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[400],
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.pushReplacement(context, MaterialPageRoute(
              builder: (context) => Quiz(),
            ));
          },
          child: Container(
            padding: EdgeInsets.fromLTRB(40.0, 20.0, 40.0, 20.0),
            decoration: BoxDecoration(
              color: Colors.amberAccent,
              borderRadius: BorderRadius.circular(50.0),

            ),
            child: Text('Start Quiz Here',
            style: TextStyle(
              color: Colors.grey[600],
              fontSize: 20.0,
            ),
            ),
          ),
        ),
      ),
    );
  }
}
