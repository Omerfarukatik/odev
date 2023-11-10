import 'dart:io';

class Question {
  String questionText;
  int correctAnswer;

  Question(this.questionText, this.correctAnswer);
}

class Quiz {
  List<Question> questions;
  int currentQuestionIndex = 0;
  int correctCount = 0;

  Quiz(this.questions);

  void showQuestion() {
    if (currentQuestionIndex < questions.length) {
      print("Soru ${currentQuestionIndex + 1}: ${questions[currentQuestionIndex].questionText}");
    } else {
      endQuiz();
    }
  }

  void checkAnswer(int userAnswer) {
    if (currentQuestionIndex < questions.length) {
      if (userAnswer == questions[currentQuestionIndex].correctAnswer) {
        print("Doğru!");
        correctCount++;
      } else {
        print("Yanlış! Doğru Cevap: ${questions[currentQuestionIndex].correctAnswer}");
      }
      currentQuestionIndex++;
      showQuestion();
    } else {
      endQuiz();
    }
  }

  void endQuiz() {
    print("Quiz bitti. Toplam Doğru Sayısı: $correctCount / ${questions.length}");
  }
}

void main() {
  List<Question> questions = generateMultiplicationTableQuestions();

  Quiz quiz = Quiz(questions);

  print("Hoşgeldiniz! Quiz'e başlamak için doğru cevabı girin.");

  quiz.showQuestion();

  while (quiz.currentQuestionIndex < quiz.questions.length) {
    String? userInput = stdin.readLineSync();
    try {
      if (userInput != null) {
        int userAnswer = int.parse(userInput);
        quiz.checkAnswer(userAnswer);
      } else {
        print("Geçersiz giriş. Bir sayı girin.");
      }
    } catch (e) {
      print("Geçersiz giriş. Bir sayı girin.");
    }
  }
}

List<Question> generateMultiplicationTableQuestions() {
  List<Question> questions = [];
  for (int i = 5; i <= 8; i++) {
    for (int j = 6; j <= 10; j++) {
      String questionText = "$i * $j kaçtır?";
      int correctAnswer = i * j;
      questions.add(Question(questionText, correctAnswer));
    }
  }
  return questions;
}
