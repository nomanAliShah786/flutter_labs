import 'QuesAns.dart';

class QuizBrain {
  int _questionNumber = 0;
  final List<Questions> _questionBank = [
    Questions("Should apples be taken in the morning?", true),
    Questions("Is breakfast important for the day?", true),
    Questions("Is flutter hybrid?", true),
    Questions("X^2 represents linear line?", false),
    Questions("Data science involves web development?", false),
    Questions('It is illegal to pee in the Ocean in Portugal.', true),
    Questions(
        'No piece of square dry paper can be folded in half more than 7 times.',
        false),
    Questions(
        'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
        true),
    Questions(
        'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
        false),
    Questions(
        'The total surface area of two human lungs is approximately 70 square metres.',
        true),
  ];

  void nextQuestions() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String GetQuestions() {
    return _questionBank[_questionNumber].QuestionString;
  }

  bool CorrectAnswer() {
    return _questionBank[_questionNumber].AnswerText;
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}
