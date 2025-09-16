/*
Q3
Create a class Grade with a private field _score.
- The setter should only accept values 0–100, otherwise print 'Invalid score'.
- Add a getter and a computed getter isPass that returns true if score ³ 50.
- In main(), demonstrate updating the score multiple times and printing results.
*/
class Grade {
  double? _score;

  Grade({required double score}) {
    this.score = score;
  }
  set score(double score) {
    if (score >= 0 && score <= 100) {
      this._score = score;
    } else {
      print('Invalid score');
    }
  }

  double get score => this._score ?? -1;

  bool get isPass {
    if (this._score! >= 50) {
      return true;
    } else {
      return false;
    }
  }
}

void main() {
  Grade grade = Grade(score: 50);
  grade.score = -4;
  grade.score = 150;

  grade.score = 90;
  print('Grade : ${grade.score}');
}
