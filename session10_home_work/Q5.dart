/*
Q5
Create a class Book with private fields _title and _pages.
- Add setters: reject empty titles and pages £ 0.
- Add a getter title and a computed getter readingTime that assumes 2 minutes per page.
- In main(), create a book, print its title and estimated reading time.
*/
class Book {
  String? _title;
  int? _pages;

  Book({required String title, required int pages}) {
    this.title = title;
    this.pages = pages;
  }
  set title(String title) {
    if (title.isNotEmpty) {
      this._title = title;
    } else {
      print('Invalid title');
    }
  }

  String get title => this._title ?? 'Unknown';
  set pages(int pages) {
    if (pages > 0) {
      this._pages = pages;
    } else {
      print('Invalid pages');
    }
  }

  int get pages => this._pages ?? -1;

  int get readingTime => this._pages! * 2;
}

void main() {
  Book book = Book(title: 'Atomic Habits', pages: 250);
  print('Title : ${book.title}');
  print('Estimated Reading Time : ${book.readingTime}');
}
