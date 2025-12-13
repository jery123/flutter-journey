import 'package:flutter/material.dart';
import 'package:quizzler/quiz_brain.dart';

QuizBrain quizBank = QuizBrain();

void main() => runApp(Quizzler());

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Widget> scoreKeeper = [
    // Icon(
    //     Icons.check,
    //     color: Colors.green
    // ),
    // Icon(
    //     Icons.close,
    //     color: Colors.red
    // ),
    // Icon(
    //     Icons.close,
    //     color: Colors.red
    // ),
    // Icon(
    //     Icons.close,
    //     color: Colors.red
    // ),
    // Icon(
    //     Icons.close,
    //     color: Colors.red
    // )
  ];

  void checkAnswer(bool userPickedAnswer) {
    bool correctAnswer = quizBank.getCorrectAnswer();

    setState(() {
      if (userPickedAnswer == correctAnswer) {
        scoreKeeper.add(Icon(Icons.check, color: Colors.green));
      } else {
        scoreKeeper.add(Icon(Icons.close, color: Colors.red));
      }
      quizBank.nextQuestion();
    });
  }
  // List<String> questions = [
  //   'You can lead a cow down stairs but not up stairs.',
  //   'Approximately one quarter of human bones are in the feet.',
  //   'A slug\'s blood is green.'
  // ];
  //
  // List<bool> answers = [
  //   false,
  //   true,
  //   true
  // ];

  // Question q1 = Question('You can lead a cow down stairs but not up stairs.', false);
  // Question q2 = Question('Approximately one quarter of human bones are in the feet.', true);
  // Question q3 = Question('A slug\'s blood is green.', true);
  //
  // late List<Question> questionBank = [
  //   q1,
  //   q2,
  //   q3
  // ];
  int questionNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                quizBank.getQuestionText(),
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 25.0, color: Colors.white),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: TextButton(
              style: TextButton.styleFrom(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero, // Removes border radius
                ),
                backgroundColor: Colors.green,
                textStyle: TextStyle(color: Colors.white),
              ),
              child: Text(
                'True',
                style: TextStyle(color: Colors.white, fontSize: 20.0),
              ),
              onPressed: () {
                checkAnswer(true);

                // setState(() {
                //   quizBank.nextQuestion();
                //   // questionNumber++;
                //   // scoreKeeper.add(
                //   //     Icon(
                //   //         Icons.check,
                //   //         color: Colors.green
                //   //     )
                //   // );
                // });
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: TextButton(
              style: TextButton.styleFrom(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero, // Removes border radius
                ),
                backgroundColor: Colors.red,
                textStyle: TextStyle(color: Colors.white),
              ),
              child: Text(
                'False',
                style: TextStyle(fontSize: 20.0, color: Colors.white),
              ),
              onPressed: () {
                checkAnswer(false);
                // bool correctAnswer = quizBank.getCorrectAnswer();
                //
                // if(correctAnswer == true){
                //   print("User got it right");
                // }else{
                //   print("User got it wrong");
                // }

                // setState(() {
                //   quizBank.nextQuestion();
                //   // questionNumber++;
                //   // scoreKeeper.add(
                //   //     Icon(
                //   //         Icons.check,
                //   //         color: Colors.red
                //   //     )
                //   // );
                // });
              },
            ),
          ),
        ),
        Row(children: scoreKeeper),
      ],
    );
  }
}

/*
question1: 'You can lead a cow down stairs but not up stairs.', false,
question2: 'Approximately one quarter of human bones are in the feet.', true,
question3: 'A slug\'s blood is green.', true,
*/
