
import 'package:algo_simulator/graph/graphlist.dart';
import 'package:algo_simulator/sortlist.dart';
import 'package:flutter/material.dart';

class Listpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      
      backgroundColor: Colors.black45,
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,

        children:<Widget> [
          Row(),
          MaterialButton(
              onPressed: () {
                
  
              },
          shape: const StadiumBorder(),
          textColor: Colors.white,
           color: Colors.teal,
          splashColor: Colors.blue[900],
         
          child: Text('Search Algorithm', style: TextStyle(fontSize: 30,),),
          ),
          
          Padding(padding:EdgeInsets.all(20)),

          MaterialButton(
              onPressed: () {
                Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => SortPage()),
  );
              },
          shape: const StadiumBorder(),
          textColor: Colors.white,
           color: Colors.teal,
          splashColor: Colors.blue[900],
         
          child: Text('Shorting Algorithm', style: TextStyle(fontSize: 30,),),
          ),
          
          Padding(padding:EdgeInsets.all(20)),
          MaterialButton(
             onPressed: () {
               Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => GraphPage()),
    );
             },
          shape: const StadiumBorder(),
          textColor: Colors.white,
           color: Colors.teal,
          splashColor: Colors.blue[900],
         
          child: Text('Graph Traversal', style: TextStyle(fontSize: 30,),),
           ),
          
        ],
        )
        
    );
  }
}