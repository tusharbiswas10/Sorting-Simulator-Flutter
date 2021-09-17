import 'package:flutter/material.dart';
import 'package:algo_simulator/graph/dfs.dart';

class cell extends StatelessWidget {
  final VoidCallback onTap;
  final ClickStatus type;
   cell({@required this. onTap,@required this. type});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
          child: Container(
        decoration:BoxDecoration(
          border: Border.all(),
          color: getCellColor(type),
                    )
                ),
              );
            }
          
            getCellColor(ClickStatus type) {
              switch(type){
                case ClickStatus.sp : return Colors.yellow;
                case ClickStatus.ep : return Colors.red;
                case ClickStatus.path : return Colors.white;
                case ClickStatus.wall : return Colors.black87;
                default:
                return Colors.white;
              }
            }
}