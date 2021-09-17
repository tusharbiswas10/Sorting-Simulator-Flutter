import 'package:algo_simulator/graph/dfs.dart';

import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';


class HomeviewProvider extends ChangeNotifier{
  ClickStatus _activatedClick;
List <ClickStatus> _cells=[];
UsedAlgo _playbuttonvalue = UsedAlgo.dfs;

HomeviewProvider(){
  for(var i=0;i<100;i++){
      cells.add(ClickStatus.path);
    }
}

void updateUsedTool(ClickStatus nTool){
  this._activatedClick=nTool;
  notifyListeners();
}

void updatecell(int index, ClickStatus newStatus){
  _cells[index]=newStatus;
  notifyListeners();
}

void updateSearchAlgo(UsedAlgo a){
  this._playbuttonvalue=a;
  notifyListeners();
}

ClickStatus get activatedClick => this._activatedClick;

List<ClickStatus> get cells =>this._cells;

UsedAlgo get playbuttonvalue => this.playbuttonvalue;

  void resetAll() {
    cells.clear();
     for(var i=0;i<100;i++){
      cells.add(ClickStatus.path);
    }
  notifyListeners();
  }

}