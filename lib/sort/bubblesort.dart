

import 'package:algo_simulator/sort/bubblesimu.dart';
import 'package:flutter/material.dart';


 class bubbleSort extends StatefulWidget {
  @override
  _bubbleSortState createState() => _bubbleSortState();
}

class _bubbleSortState extends State<bubbleSort> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black45,
      appBar: AppBar(
        title:Text('Bubble sort'),
        backgroundColor: Colors.black45,
        
        automaticallyImplyLeading: true,
        leading: IconButton(icon: Icon(Icons.arrow_back_ios,),
        onPressed: () {
                
              }
      ),
      ),
      body:Column(
        children:<Widget> [
        Row(),
        

          Text("Bubble sort logic:",
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight:FontWeight.bold ,fontSize: 40,color: Colors.white),
          ),

          Image.asset('assets/bubble.JPG'),
          Padding(padding:EdgeInsets.all(60)),
        
          MaterialButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> bubbleSimulation()),);
                
              },
          shape: const StadiumBorder(),
          textColor: Colors.white,
           color: Colors.teal,
          splashColor: Colors.blue[900],
         
          child: Text('Next', style: TextStyle(fontSize: 30,),),
          ),
        ],
      )
       
      
    );
  }
}