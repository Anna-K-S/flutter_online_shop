import 'package:flutter/material.dart';

void main() => runApp(const OnlineShop());

class OnlineShop extends StatelessWidget {
  const OnlineShop({super.key});


 @override
 Widget build(BuildContext context) {
   return MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.amber[100],
      appBar: AppBar(
        title: Text('SHOP',
        style: TextStyle(
          color: Colors.orange.shade800,
          fontWeight: FontWeight.w600
        ),),
        backgroundColor: Colors.yellow.shade800,
      ),),


   );
 }
  
}