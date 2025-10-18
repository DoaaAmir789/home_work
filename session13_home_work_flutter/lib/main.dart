import 'package:flutter/material.dart';
import 'package:session13_home_work_flutter/ContentSection.dart';
import 'package:session13_home_work_flutter/TopSection.dart';

void main() {
  runApp(Design());
}

class Design extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Container(),
              TopSection(),
              const Divider(
                height: 30,
                color: Colors.grey,
              ),
              ContentSection(),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
