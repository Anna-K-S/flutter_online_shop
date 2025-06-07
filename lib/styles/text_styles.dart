import 'package:flutter/material.dart';

class TextStyles {
  static const title = TextStyle(
    color: Colors.black,
    fontSize: 35.0,
    fontWeight: FontWeight.bold,
  );

  static const subtitle = TextStyle(
    color: Color.fromARGB(255, 71, 69, 69),
    fontSize: 20.0,
  );
  static const text = TextStyle(
    color: Colors.black,
    fontSize: 15.0,
  );

  static const productsScreenTitle = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 12.0,
    color: Colors.black87,
  );

  static const productDescription = TextStyle(
    fontSize: 18.0,
    color: Color.fromARGB(255, 71, 69, 69),
  );

  static const productsScreenPrice = TextStyle(
    fontWeight: FontWeight.bold,
    color: Colors.blue,
    fontSize: 13.0,
  );

  static const detailScreenPrice = TextStyle(
    fontSize: 20,
    color: Colors.blue,
    fontWeight: FontWeight.bold,
  );

  static const detailScreenTitle = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: Colors.black87,
  );

  static const detailScreenCategory = TextStyle(
    fontSize: 18.0,
    color: Colors.black54,
    fontWeight: FontWeight.normal,
  );

  static const productsScreenSubtitle = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w400,
  );
}
