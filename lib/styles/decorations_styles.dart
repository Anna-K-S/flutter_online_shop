import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DecorationsStyles {
  static const textField = InputDecoration(
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
            obscureText ? Icons.visibility_off : Icons.visibility,
            color: Colors.grey,
          ),
          onPressed: visibility,
        ),
      );

  static InputDecoration searchBar({
    required String hintText,
    required VoidCallback onPressed,
    required bool showClearButton,
  }) =>
      InputDecoration(
        icon: const Icon(
          Icons.search,
          color: Colors.black,
        ),
        hintText: hintText,
        suffixIcon: showClearButton
            ? IconButton(
                onPressed: onPressed,
                icon: const Icon(
                  Icons.clear,
                  color: Colors.black,
                ),
              )
            : null,
        filled: true,
        fillColor: Colors.white,
        contentPadding: const EdgeInsets.symmetric(
          vertical: 0,
          horizontal: 20,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide.none,
        ),
      );
}
