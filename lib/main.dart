
import 'package:dice_game/screens/homepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(DiceGameApp());
}

class DiceGameApp extends StatelessWidget {
  const DiceGameApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo
      ),
      home: HomePage(),
    );
  }
}
