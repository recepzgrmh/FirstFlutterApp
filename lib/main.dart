import 'package:flutter/material.dart';
import 'package:flutter_guide/result.dart';
import './quiz.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': '1- What is the capital of France?',
      'answers': [
        {'text': 'Paris', 'score': 1},
        {'text': 'İstanbul', 'score': 0},
        {'text': 'Prag', 'score': 0},
        {'text': 'London', 'score': 0}
      ],
    },
    {
      'questionText': '2- Who painted the Mona Lisa?',
      'answers': [
        {'text': 'Claude Monet', 'score': 0},
        {'text': 'Frida Kahlo', 'score': 0},
        {'text': 'Leonardo da Vinci', 'score': 1},
        {'text': 'Salvador Dali ', 'score': 0}
      ],
    },
    {
      'questionText': '3- In what year did World War II end?',
      'answers': [
        {'text': '1920', 'score': 0},
        {'text': '1945', 'score': 1},
        {'text': '1937', 'score': 0},
        {'text': '1925', 'score': 0},
        {'text': '1904', 'score': 0}
        // bu seçenekler puani etkilemiyor çünkü tüm şarkilar çok iyi
      ],
    },
    {
      'questionText': '4- What is the chemical symbol for gold?',
      'answers': [
        {'text': 'Na', 'score': 0},
        {'text': 'Hg', 'score': 0},
        {'text': 'Au', 'score': 1},
        {'text': 'Go', 'score': 0}
      ],
    },
    {
      'questionText': '5- Which planet in our solar system has the most moons?',
      'answers': [
        {'text': 'Earth', 'score': 0},
        {'text': 'Venus', 'score': 0},
        {'text': 'Saturn', 'score': 0},
        {'text': 'Jupiter', 'score': 1}
      ],
    },
    {
      'questionText': '6- Who is the author of the "Harry Potter" series?',
      'answers': [
        {'text': 'Stephen King', 'score': 0},
        {'text': 'Arthur Conan Doyle', 'score': 0},
        {'text': 'J.K. Rowling', 'score': 1},
        {'text': 'J. R. R. Tolkien ', 'score': 0}
      ],
    },
    {
      'questionText': '7- Who wrote the play "Hamlet?',
      'answers': [
        {'text': 'William Shakespeare', 'score': 1},
        {'text': 'Samuel Beckett', 'score': 0},
        {'text': 'Victor Hugo', 'score': 0},
        {'text': 'Goethe', 'score': 0}
      ],
    },
    {
      'questionText':
          '8- What is the name of the game where players take on the role of a survivor in a post-apocalyptic world overrun by zombies?',
      'answers': [
        {'text': 'Cyberpunk 2077', 'score': 0},
        {'text': 'Need for Speed', 'score': 0},
        {'text': 'Grand Theft Auto', 'score': 0},
        {'text': 'The Last of Us', 'score': 1}
      ],
    },
    {
      'questionText': '9- Who won the 2022 Formula 1 Drivers\' Championship?',
      'answers': [
        {'text': 'Lewis Hamilton', 'score': 0},
        {'text': 'Sergip Perez', 'score': 0},
        {'text': 'Max Verstappen', 'score': 1},
        {'text': 'Sebastian Vettel', 'score': 0}
      ],
    },
    {
      'questionText': '10- Who won the 2022 FIFA World Cup?',
      'answers': [
        {'text': 'Argentina', 'score': 1},
        {'text': 'Brazil', 'score': 0},
        {'text': 'France', 'score': 0},
        {'text': 'Portugal', 'score': 0}
      ],
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    _totalScore += score;
    print(_questionIndex);
  }

  void _restartQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My First App'),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex,
                  questions: _questions,
                )
              : Result(_totalScore, _restartQuiz)),
    );
  }
}
