import 'package:algo_simulator/sort/selectionsimu.dart';
import 'package:flutter/material.dart';


class selectionSort extends StatefulWidget {
  @override
  _selectionSortState createState() => _selectionSortState();
}

class _selectionSortState extends State<selectionSort> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black45,
      appBar: AppBar(
        title:Text('Selection sort'),
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
        

          Text("Selection sort logic:",
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight:FontWeight.bold ,fontSize: 40,color: Colors.white),
          ),

          Image.asset('assets/selection.JPG'),
          Padding(padding:EdgeInsets.all(60)),
        
          MaterialButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> selectionSimulation()),);
                
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