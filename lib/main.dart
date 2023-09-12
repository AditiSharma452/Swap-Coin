import 'package:flutter/material.dart';
import 'package:swap_coin/swap_coin_material_page.dart';

void main() {
  runApp(const MyApp());
}

//Types of Widgets
//1. StatelessWidget
//2. StatefulWidget

// State

//1. Material Design
//2. Cupertino Design

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override 
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SwapCoinMaterialPage(),
    );
  }
}
