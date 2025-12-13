import 'package:flutter/material.dart';

class ViewButton extends StatelessWidget {
  final String buttonText;
  final Color buttonColor;
  const ViewButton({
    super.key,
    required this.buttonText,
    required this.buttonColor,
    required GlobalKey<FormState> formKey,
  }) : _formKey = formKey;

  final GlobalKey<FormState> _formKey;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: ElevatedButton(
        onPressed: () async {
          if (_formKey.currentState!.validate()) {
            await Future.delayed(Duration(seconds: 2), () {});
          }
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: buttonColor,
          foregroundColor: Colors.white,
          elevation: 8,
          shadowColor: buttonColor.withOpacity(0.5),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Text(
          buttonText,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.2,
          ),
        ),
      ),
    );
  }
}
