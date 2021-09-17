
import 'package:algo_simulator/sort/insertionsimu.dart';
import 'package:flutter/material.dart';

class insertionsort extends StatefulWidget {
  @override
  _insertionsortState createState() => _insertionsortState();
}

class _insertionsortState extends State<insertionsort> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black45,
      appBar: AppBar(
        title:Text('Insertion sort'),
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
        

          Text("Insertion sort logic:",
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight:FontWeight.bold ,fontSize: 40,color: Colors.white),
          ),

          Image.asset('assets/insertion.JPG'),
          Padding(padding:EdgeInsets.all(60)),
        
          MaterialButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> insertionSimulation()),);
                
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