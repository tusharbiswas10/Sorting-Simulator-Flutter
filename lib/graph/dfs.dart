import 'package:algo_simulator/graph/cell.dart';
import 'package:algo_simulator/graph/dfsController.dart';
import 'package:algo_simulator/graph/dfsController_imp.dart';
import 'package:algo_simulator/providers/viewProvider.dart';

import 'package:flutter/material.dart';
import 'package:tuple/tuple.dart';
import 'package:provider/provider.dart';

enum ClickStatus{sp,wall,ep,path}
enum UsedAlgo{dfs}

class dfs extends StatelessWidget {

 

  @override
  Widget build(BuildContext context) {
    final homeviewprovider =context.watch<HomeviewProvider>();
    final activatedClick=homeviewprovider.activatedClick;
    final cells=homeviewprovider.cells;
    final playbuttonvalue=homeviewprovider.playbuttonvalue;
    return Scaffold(

       appBar: AppBar(
        title:Text('DFS'),
        backgroundColor: Colors.black45,
        
        automaticallyImplyLeading: true,
        leading: IconButton(icon: Icon(Icons.arrow_back_ios,),
        onPressed: () {
                
              }
      ),
      ),

      body: Column(
        children: [
          Expanded(
                      child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 10),
                itemCount: cells.length,
                itemBuilder:(context,index){
                  return  cell(
                    type: cells[index],
                    onTap: (){
                      

                        if(activatedClick == ClickStatus.sp || activatedClick == ClickStatus.ep)
                        clearOldSPoint(cells,activatedClick);
                        context.read<HomeviewProvider>().updatecell(index,activatedClick);
                      
                      
                    },
                  );
                },
                physics: NeverScrollableScrollPhysics(), 
                ),
            ),
          ),
          SizedBox(
            height:50,
            child:Row(children: [
               Padding(padding:EdgeInsets.all(5)),

              MaterialButton(
                onPressed: () {
                context.read<HomeviewProvider>().updateUsedTool(ClickStatus.sp);
                                   
                                },
                                  shape: const StadiumBorder(),
                            textColor: Colors.white,
                             color: Colors.teal,
                            splashColor: Colors.blue[900],
                           
                            child: Text('Starting', style: TextStyle(fontSize: 15,),),),
                  
                             Padding(padding:EdgeInsets.all(5)),
                  
                            MaterialButton(
                                  onPressed: () {
                                  context.read<HomeviewProvider>().updateUsedTool(ClickStatus.wall);
                                    
                                },
                                  shape: const StadiumBorder(),
                            textColor: Colors.white,
                             color: Colors.teal,
                            splashColor: Colors.blue[900],
                           
                            child: Text('Wall', style: TextStyle(fontSize: 15,),),),
                  
                               Padding(padding:EdgeInsets.all(5)),
                            MaterialButton(
                                  onPressed: () {
                                  context.read<HomeviewProvider>().updateUsedTool(ClickStatus.ep);
                                    
                                },
                                  shape: const StadiumBorder(),
                            textColor: Colors.white,
                             color: Colors.teal,
                            splashColor: Colors.blue[900],
                           
                            child: Text('Ending', style: TextStyle(fontSize: 15,),),),
                  
                            Padding(padding:EdgeInsets.all(5)),
                            MaterialButton(
                                  onPressed: () {
                                  
                                  context.read<HomeviewProvider>().updateUsedTool(ClickStatus.path);
                                      
                                },
                                  shape: const StadiumBorder(),
                            textColor: Colors.white,
                             color: Colors.teal,
                            splashColor: Colors.blue[900],
                           
                            child: Text('Path', style: TextStyle(fontSize: 15,),),)
                              ],)
                            ),
                  
                           /* Row(
                              children: [
                                 Padding(padding:EdgeInsets.only(left:100)),
                                MaterialButton(
                                  
                                  onPressed: () {
                                  setState((UsedAlgo value) {
                                   UsedAlgo.dfs
                                  });
                                    
                                },
                                  shape: const StadiumBorder(),
                            textColor: Colors.white,
                             color: Colors.teal,
                            splashColor: Colors.blue[900],
                           
                            child: Text('Run', style: TextStyle(fontSize: 15,),),),
                  
                             Padding(padding:EdgeInsets.all(15)),
                            MaterialButton(
                                  onPressed: () {
                                  setState(() {
                                    for(var i=0;i<cells.length;i++){
                                      cells[i]=ClickStatus.path;
                                    }
                                  });
                                    
                                },
                                  shape: const StadiumBorder(),
                            textColor: Colors.white,
                             color: Colors.teal,
                            splashColor: Colors.blue[900],
                           
                            child: Text('Clear', style: TextStyle(fontSize: 15,),),),
                              ],
                            )*/

                            Row(
                                children:[
                                  DropdownButton(iconSize: 0.0,items: [DropdownMenuItem(
                                    child: Text(''),
                                    value: playbuttonvalue,
                                    )], 
                                    onChanged: (UsedAlgo value){
                                      context.read<HomeviewProvider>().updateSearchAlgo(value);
                                        
                                     
                                    }),

                                  Padding(padding:EdgeInsets.only(left:100)),
                                MaterialButton(
                                  
                                  onPressed: () {
                                  
                                   
                                      DfsController dfsController =DfsCOntrollerImplementation();
                                     Tuple3 dfsResult= dfsController.startDfs(cells);


                                  
                                    
                                },
                                  shape: const StadiumBorder(),
                            textColor: Colors.white,
                             color: Colors.teal,
                            splashColor: Colors.blue[900],
                           
                            child: Text('Run', style: TextStyle(fontSize: 15,),),),
                  
                             Padding(padding:EdgeInsets.all(15)),
                            MaterialButton(
                                  onPressed: () {
                                  context.read<HomeviewProvider>().resetAll();
                                    
                                },
                                  shape: const StadiumBorder(),
                            textColor: Colors.white,
                             color: Colors.teal,
                            splashColor: Colors.blue[900],
                           
                            child: Text('Clear', style: TextStyle(fontSize: 15,),),),
                                ]
                              )
                              
                          ],
                        ),
                        
                      );
                    }
                  
                    void clearOldSPoint(List<ClickStatus> cells,ClickStatus activatedClick) {

                      var oldpoint=cells.indexOf(activatedClick);

                      if(oldpoint>0){
                        cells[oldpoint]=ClickStatus.path;
                      }



                    }
}

