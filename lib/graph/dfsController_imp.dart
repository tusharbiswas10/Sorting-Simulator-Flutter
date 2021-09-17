

import 'package:algo_simulator/graph/dfs.dart';
import 'package:algo_simulator/graph/dfsController.dart';
import 'package:algo_simulator/graph/utils.dart';
import 'package:flutter/material.dart';
import 'package:tuple/tuple.dart';

class DfsCOntrollerImplementation implements DfsController{
  @override
  Tuple3<List<String>,List<num>,num> startDfs(List<ClickStatus> cells) {
    // TODO: implement startDfs

    num start =cells.indexOf(ClickStatus.sp);
    num end =cells.indexOf(ClickStatus.ep);

  if(start==-1 || end==-1){
    throw ArgumentError("Need a starting and ending");
  }

    List<num> allPaths=[];
    List<num> allWalls=[];

    

    cells.asMap().forEach((index,element) {
      switch(element){
      case ClickStatus.wall: allWalls.add(index);break;
      case ClickStatus.path: allPaths.add(index);break;
        case ClickStatus.sp:
          
          break;
        case ClickStatus.ep:
         
          break;
    }
    });

    num explored_tiles=0;

    Node startNode=Node(start);
    StackFrontier frontire =StackFrontier();
    frontire.add(startNode);

    Set<num> explored={};

    while(true){
      if(frontire.empty()){
        throw Exception("No sloution");
      }

      Node node =frontire.remove();
      explored_tiles++;

      if(node.state==end){

        List<String> action=[];
        List<num> cells=[];

        while(node.parent!=null){
          action.add(node.action);
          cells.add(node.state);
          node=node.parent;
        }
        action.reversed;
        cells.reversed;

        return Tuple3<List<String>,List<num>,num>(action,cells,explored_tiles);

      }

      explored.add(node.state);

      for(var entry in _neighbors(cells, node.state).entries){
        if(!explored.contains(entry.value) && !frontire.containState(entry.value)){
          var childNode =Node(entry.value,action: entry.key,parent: node);
          frontire.add(childNode);
        }
      }
      

      _neighbors(cells, node.state).forEach((action, value) {
        
       });
    }
    
  }

  Map <String,num> _neighbors(List<ClickStatus> cells, num state){
     Map <String,num> result={
        "up":state -8,
        "down":state +8,
        "left":state -1,
        "right":state +8
      };

      result.removeWhere((key, value)  {
        return value <0 || value >99 || cells[value]==ClickStatus.wall;
      });

      return result;
  }
  
}