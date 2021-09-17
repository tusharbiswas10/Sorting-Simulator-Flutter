import 'package:algo_simulator/graph/dfs.dart';

class Node{
 final String action;
  final Node parent;
  final num state;

  Node(this.state,{this.action, this.parent });

}

class StackFrontier{


  
    List<Node> _frontire=[]; 

    void add(Node node){
      _frontire.add(node);
    }

    bool containState(num state){
      Node node=_frontire.firstWhere((node) => node.state==state, 
      orElse:()=>  null, );

      return node != null;

    }

     bool empty(){

      return _frontire.isEmpty;
    }
   /* bool empty(){

    }*/

    Node remove(){
      
      if(this.empty()){
        throw Exception("Frontirer empty");
      }
      else{
        return _frontire.removeLast();
      }
    }
            
               
    

            
              
           
}

class QueueFrontire extends StackFrontier{
 @override
 Node remove(){
   if(this.empty()){
        throw Exception("Frontirer empty");
      }
      else{
        return _frontire.removeAt(0);
      }
 }
}