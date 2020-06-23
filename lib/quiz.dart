import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quizapp/data.dart';
import 'package:quizapp/questions.dart';

class Quiz extends StatefulWidget {
  @override
  _QuizState createState() => _QuizState();
}

class _QuizState extends State<Quiz> with SingleTickerProviderStateMixin{

  int index = 0, totalQue = 0;
  int correct = 0, incorrect = 0, notAttempted = 0, score = 0;
  List<Questions> _questions = new List<Questions>();

  Animation animation;
  AnimationController animationController;

  double animBegin = 0.0;
  double animEnd = 1.0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _questions = getQuestion();
    animationController = AnimationController(
      duration: const Duration(seconds: 5), vsync: this
    )..addListener(() {
      setState(() {

      });
    });
    animation = Tween(begin: animBegin,end:animEnd).animate(animationController);
    startAnimation();
    animationController.addStatusListener((AnimationStatus status) {
      if(status == AnimationStatus.completed) {
        index++;
        if(index == _questions.length) {
          index=0;
        }
        resetAnimation();
        startAnimation();
      }
    });
  }
  startAnimation() {
    animationController.forward();
  }

  resetAnimation() {
    animationController.reset();
  }

  stopAnimation() {
    animationController.stop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 60),
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(12.0, 0.0, 12.0, 0.0),
              child: Row(
                children: <Widget>[
                  Text("Question ",
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                  Text("${index+1}/${_questions.length}",
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),
                  Text("$score ",
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text("points",
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                   )
                  ],
                ),
            ),
            SizedBox(height: 30.0),
            Container(
              padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
              child: Text("${_questions[index].getQue()}",
                  style: TextStyle(fontSize: 18.0,),
                ),
            ),
            SizedBox(height: 20,),
            LinearProgressIndicator(
                value: animation.value,
              ),
            Image(
              image: NetworkImage('${_questions[index].getImgUrl()}'),),
            /*CachedNetworkImage(
                imageUrl: _questions[index].getImgUrl(),
              ),*/
            Spacer(),
            Container(
                padding: EdgeInsets.fromLTRB(54.0, 10.0, 54.0, 10.0),
                decoration: BoxDecoration(
                  color: Colors.blue[400],
                  borderRadius: BorderRadius.circular(40.0),
                ),
                child: Text('${_questions[index].getOp1()}',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
            ),
            SizedBox(height: 20,),
            Container(
              padding: EdgeInsets.fromLTRB(54.0, 10.0, 54.0, 10.0),
              decoration: BoxDecoration(
                color: Colors.blue[400],
                borderRadius: BorderRadius.circular(40.0),
              ),
              child: Text('${_questions[index].getOp2()}',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
            ),
            SizedBox(height: 20,),
            Container(
              padding: EdgeInsets.fromLTRB(54.0, 10.0, 54.0, 10.0),
              decoration: BoxDecoration(
                color: Colors.blue[400],
                borderRadius: BorderRadius.circular(40.0),
              ),
              child: Text('${_questions[index].getOp3()}',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
            ),
            SizedBox(height: 20,),
            Container(
              padding: EdgeInsets.fromLTRB(54.0, 10.0, 54.0, 10.0),
              decoration: BoxDecoration(
                color: Colors.blue[400],
                borderRadius: BorderRadius.circular(40.0),
              ),
              child: Text('${_questions[index].getOp4()}',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
            ),
            ],
          ),
        ),
      );
  }
}
