/*
Q3 Create a class Movie with attributes title and rating. 
In main(), create a list of 4 movies. 
Print only the movies with a rating above 7.
*/
void main() {
  List<Movie> movies = [
    Movie(title: 'Frozen', rating: 6.9),
    Movie(title: 'The Wild Robot', rating: 8.2),
    Movie(title: 'Sonic The Hedgehog', rating: 7.5),
    Movie(title: 'Migration', rating: 6.6)
  ];
  print('Movies with rating above 7 :');
  for (var movie in movies) {
    if (movie.rating > 7) {
      print(movie.title);
    }
  }
}

class Movie {
  String title;
  num rating;

  Movie({required this.title, required this.rating});
}
