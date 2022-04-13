import 'question.dart';

class QuestionBank {
  int _question = 0;

  List<Question> _questionBank = [
    Question('You are human', true),
    Question('You are not human', false),
    Question('You are human', true),
    Question('You are not human', false),
    Question('You are human', true),
    Question('You are not human', false),
    Question('You are human', true),
    Question('You are human', true),
    Question('You are not human', false),
    Question('You are human', true),
  ];

  void nextQuestion() {
    if (_question < _questionBank.length - 1) {
      _question++;
    }
  }

  String getquestion() {
    return _questionBank[_question].question;
  }

  bool getCorrectAnswer() {
    return _questionBank[_question].answer;
  }

  bool isFinished() {
    if (_question >= _questionBank.length - 1) {
      print('Now returning true');
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _question = 0;
  }
}
