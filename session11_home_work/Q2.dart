/*
Q2
Model shapes to compute total paintable area and cost.
Requirements:
- Provide a general shape type (concrete class) with an area() method that can be overridden.
- Implement at least three concrete shape types with encapsulated dimensions and validated
constructors (invalid ® print; keep previous).
- Use polymorphism with a mixed collection of shapes to compute total area (no type checks in client
code).
- Apply tiered pricing: first 50 units at 1.50, next 100 at 1.25, remainder at 1.00; print total area and total
cost to 2 decimals.
*/
class Shape {
  double get area => 0;
}

class Rectangle extends Shape {
  double _width = 0.0;
  double _height = 0.0;

  Rectangle({required double width, required double height}) {
    this.width = width;
    this.height = height;
  }

  set width(double width) {
    if (width > 0) {
      this._width = width;
    } else {
      print('Width must be positive number');
    }
  }

  set height(double height) {
    if (height > 0) {
      this._height = height;
    } else {
      print('Height must be positive number');
    }
  }

  double get width => _width;
  double get height => _height;

  @override
  double get area => _height * _width;
}

class Square extends Shape {
  double _side = 1;

  Square({required double side}) {
    this.side = side;
  }

  set side(double side) {
    if (side > 0) {
      this._side = side;
    } else {
      print('Side must be positive number');
    }
  }

  double get side => _side;
  @override
  double get area => _side * _side;
}

class Circle extends Shape {
  double _radius = 0;

  Circle({required double radius}) {
    this.radius = radius;
  }

  set radius(double radius) {
    if (radius > 0) {
      this._radius = radius;
    } else {
      print('Radius must be positive');
    }
  }

  double get radius => _radius;

  @override
  double get area => 3.14 * radius * radius;
}

void main() {
  List<Shape> shapes = [
    Square(side: 8),
    Rectangle(width: 15, height: 30),
    Circle(radius: 6)
  ];

  double totalArea = 0;
  for (var shape in shapes) {
    totalArea += shape.area;
  }
  print('Total Area of Shapes: ${totalArea.toStringAsFixed(2)}');
  print(
      'Cost of Paintainable Area : ${paintableAreaCost(totalArea).toStringAsFixed(2)}');
}

double paintableAreaCost(double area) {
  double cost = 0;
  if (area <= 50) {
    cost = area * 1.5;
  } else if (area <= 150) {
    cost = (50 * 1.5) + (area - 50) * 1.25;
  } else {
    cost = (50 * 1.5) + (100 * 1.25) + (area - 150) * 1;
  }
  return cost;
}
