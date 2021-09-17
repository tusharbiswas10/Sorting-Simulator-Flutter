import 'package:algo_simulator/graph/dfs.dart';
import 'package:algo_simulator/providers/viewProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class GraphPage extends StatelessWidget {
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
                
                
              },
          shape: const StadiumBorder(),
          textColor: Colors.white,
           color: Colors.teal,
          splashColor: Colors.blue[900],
         
          child: Text('BFS', style: TextStyle(fontSize: 30,),),
          ),
          
          Padding(padding:EdgeInsets.all(20)),

          MaterialButton(
              onPressed: () {

                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder:(context)=>
                    ChangeNotifierProvider
                    (create:(context)=> HomeviewProvider(), child: dfs(), ),),);
                
              },
          shape: const StadiumBorder(),
          textColor: Colors.white,
           color: Colors.teal,
          splashColor: Colors.blue[900],
         
          child: Text('DFS', style: TextStyle(fontSize: 30,),),
          ),



          Padding(padding:EdgeInsets.all(20)),
          MaterialButton(
              onPressed: () {
                
                
              },
          shape: const StadiumBorder(),
          textColor: Colors.white,
           color: Colors.teal,
          splashColor: Colors.blue[900],
         
          child: Text('A*', style: TextStyle(fontSize: 30,),),
          ),
          
        ]
        )
      
    );
  }
}