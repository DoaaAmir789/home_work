import 'package:flutter/material.dart';
import 'package:session16_home_work_flutter/widgets/option_tile.dart';

class Options extends StatelessWidget {
  const Options({super.key, required this.options});

  final List<String> options;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        OptionTile(text: options[0]),
        OptionTile(text: options[1]),
        OptionTile(text: options[2]),
        OptionTile(text: options[3]),
      ],
    );
  }
}
