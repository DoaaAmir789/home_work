import 'package:flutter/material.dart';

abstract class AppDecoration {
  static BoxDecoration loginBackgroundDecoration = BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        const Color(0xFF667eea),
        const Color(0xFF764ba2),
        const Color(0xFFf093fb),
      ],
    ),
  );

  static BoxDecoration signUpBackgroundDecoration = BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.topRight,
      end: Alignment.bottomLeft,
      colors: [
        const Color(0xFF11998e),
        const Color(0xFF38ef7d),
        const Color(0xFF06beb6),
      ],
    ),
  );

  static BoxDecoration formBackgroundDecoration = BoxDecoration(
    color: Colors.white.withOpacity(0.95),
    borderRadius: BorderRadius.circular(20),
    boxShadow: [
      BoxShadow(
        color: Colors.black.withOpacity(0.1),
        blurRadius: 30,
        offset: const Offset(0, 15),
      ),
    ],
  );
}
