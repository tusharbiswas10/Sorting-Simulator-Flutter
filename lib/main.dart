import 'package:algo_simulator/providers/viewProvider.dart';
import 'package:algo_simulator/listpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'dart:async';

import 'package:provider/provider.dart';


void main(){
  runApp(
    MaterialApp(
      home:algoStart()),
    );
  
}


class algoStart extends StatefulWidget {
  @override
  _algoStartState createState() => _algoStartState();
}

class _algoStartState extends State<algoStart> {
  @override
  void initState() {
   
    super.initState();
    Future.delayed(
      
      Duration(seconds:2 ),
      (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=> Listpage()),);
      }
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('Algo Simulator',
      textAlign: TextAlign.center,
      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 50,color: Colors.teal
     )
     ),
      
    ),
    backgroundColor: Colors.black45,);
  }
}