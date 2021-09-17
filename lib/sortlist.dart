
import 'package:algo_simulator/sort/bubblesort.dart';
import 'package:algo_simulator/sort/insertionsort.dart';
import 'package:algo_simulator/sort/selectionsort.dart';
import 'package:flutter/material.dart';

class SortPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black45,
        title: Text('Sorting Algorithm'),
        automaticallyImplyLeading: true,
        leading: IconButton(icon: Icon(Icons.arrow_back_ios,),
        onPressed: () {
                
              }
      ),
      ),
      backgroundColor: Colors.black45,
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,

        children:<Widget> [
          Row(),
          MaterialButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> bubbleSort()),);
                
              },
          shape: const StadiumBorder(),
          textColor: Colors.white,
           color: Colors.teal,
          splashColor: Colors.blue[900],
         
          child: Text('Bubble Sort', style: TextStyle(fontSize: 30,),),
          ),
          
          Padding(padding:EdgeInsets.all(20)),
          MaterialButton(
              onPressed: () {
                 Navigator.push(context, MaterialPageRoute(builder: (context)=> selectionSort()),);
              },
          shape: const StadiumBorder(),
          textColor: Colors.white,
           color: Colors.teal,
          splashColor: Colors.blue[900],
         
          child: Text('Selection Sort', style: TextStyle(fontSize: 30,),),
          ),

          Padding(padding:EdgeInsets.all(20)),
          MaterialButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> insertionsort()),);
                
              },
          shape: const StadiumBorder(),
          textColor: Colors.white,
           color: Colors.teal,
          splashColor: Colors.blue[900],
         
          child: Text('Insertion Sort', style: TextStyle(fontSize: 30,),),
          ),
          
        ]
        )
      
    );
  }
}