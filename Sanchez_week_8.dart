void main() {
  String studentName = 'RAFAEL V. SANCHEZ';
  int quizScore = 45;
  int totalItems = 50;

  double calculateGrade(int score, int total) {
    return score / total * 100;
  }

  bool scoreIsValid(int score, int total) {
    return score >= 0 && total > 0 && score <= total;
  }

  print('=== STUDENT GRADE CALCULATOR ===');


  bool enteredLetters = true;

  try {
    if (enteredLetters) {
      throw FormatException('Invalid number');
    }

    if (scoreIsValid(quizScore, totalItems)) {
      double grade = calculateGrade(quizScore, totalItems);
      bool isPassed = grade >= 75;

      print('\n┌─────────────────────────────┐');
      print('│     STUDENT GRADE REPORT    │');
      print('├─────────────────────────────┤');
      print('│ Name   : $studentName       │');
      
      for (int i = 1; i <= 3; i++) {
        if (i == 1) {
          print('│ Score  : $quizScore / $totalItems │');
        } else if (i == 2) {
          print('│ Grade  : ${grade.toStringAsFixed(1)}%          │');
        } else {
          print('│ Status : ${isPassed ? "PASSED" : "FAILED"}        │');
        }
      }
      
      print('└─────────────────────────────┘');
      
      if (isPassed) {
        print('🎉 Congratulations! You passed!');
      } else {
        print('📚 Keep practicing! You can do better next time.');
      }
    } else {
      print('⚠️ Please enter valid score and total items.');
    }
  } catch (e) {
    print('❌ Error: Please enter numbers only, not letters.');
  }
}
