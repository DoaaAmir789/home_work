/*
Question 15
Write a Dart program that simulates a simple router using a switch statement on a string path ('/',
'/products', '/profile', or other). Handle each case with appropriate output, including maps and null
safety where needed.
*/
void main() {
  Map<String, String> routes = {
    '/': 'This is main page',
    '/products': 'This is products page',
    '/profile': 'This is profile page',
    '/cart': 'This is cart page'
  };
  String? path;
  switch (path) {
    case '/':
      print(routes['/']);
      break;
    case '/products':
      print(routes['/products']);
      break;
    case '/profile':
      print(routes['/profile']);
      break;
    case '/cart':
      print(routes['/cart']);
      break;
    default:
      print('Invalid Url');
  }
}
