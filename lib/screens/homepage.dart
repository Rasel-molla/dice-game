
import 'dart:math';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>  {

  Random random = Random();
  var dice;
  bool dela = false;
  @override
  void initState() {
    dice = random.nextInt(6)+1;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    
    var customHeight = size.height-56;
    return Scaffold(
      appBar: AppBar(
        title: Text('Dice Game'),
      ),
      body: Container(
        height:customHeight,
        width: size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
         children: [
           Container(
             height:customHeight /2,
             child: Row(
               children: [
                 Container(
                   width: size.width /2,
                   color: Colors.indigo,
                   child:  myDice(),

                 ),
                 Container(
                   width: size.width /2,
                   color: Colors.green,
                   child:  myDice(),
                 ),
               ],
             ),
           ),
           Container(
             height:customHeight /2,
             color: Colors.red,
             child: Row(
               children: [
                 Container(
                   width: size.width /2,
                   color: Colors.amber,
                   child:  myDice(),
                 ),
                 Container(
                   width: size.width /2,
                   child:  myDice(),

                 ),
               ],
             ),
           ),
         ],
        ),
      ),
    );
  }

  InkWell myDice() {
    return InkWell(
           onTap: (){
             setState(() {
               dela = true;
             });
             Future.delayed(Duration(seconds: 1),(){
               setState(() {
                 dela = false;
                 dice = random.nextInt(6)+1;

               });
             });
           },
             child: dela == true ? CircularProgressIndicator(color: Colors.amber,) :
             Image.asset('images/dice$dice.png',height: 150,width: 150,));
  }
}
