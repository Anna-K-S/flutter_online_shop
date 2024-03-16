import 'package:flutter/material.dart';

class DecorationsStyles {
  static const textField = InputDecoration(
    hintText: ' ',
    contentPadding: EdgeInsets.symmetric(
      vertical: 10.0,
      horizontal: 20.0,
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(20.0),
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: Color.fromARGB(255, 94, 90, 90),
        width: 1.0,
      ),
      borderRadius: BorderRadius.all(
        Radius.circular(20.0),
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: Color.fromARGB(255, 94, 90, 90),
        width: 2.0,
      ),
      borderRadius: BorderRadius.all(
        Radius.circular(20.0),
      ),
    ),
  );

  static InputDecoration password({
    required bool obscureText,
    required VoidCallback visibility,
  }) =>
      InputDecoration(
        contentPadding: const EdgeInsets.symmetric(
          vertical: 10.0,
          horizontal: 20.0,
        ),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(20.0),
          ),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Color.fromARGB(255, 94, 90, 90),
            width: 1.0,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(20.0),
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Color.fromARGB(255, 94, 90, 90),
            width: 2.0,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(20.0),
          ),
        ),
        suffixIcon: IconButton(
          icon: Icon(
            obscureText ? Icons.visibility : Icons.visibility_off,
            color: Colors.grey,
          ),
          onPressed: visibility,
        ),
      );
}
