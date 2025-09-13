/*
Q5 Create a class Course with attributes title and duration (default = 3 months). 
Create two courses: one with custom duration and one with the default. Print both.
*/
void main() {
  Course automata = Course(title: 'Automata', duration: 4);
  print('Course Title : ${automata.title}');
  print('Course Duration : ${automata.duration}');

  Course web = Course(title: 'Web');
  print('Course Title : ${web.title}');
  print('Course Duration : ${web.duration}');
}

class Course {
  String title;
  int duration;

  Course({required this.title, this.duration = 3});
}
