import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class insertionSimulation extends StatefulWidget {
  @override
  _insertionSimulationState createState() => _insertionSimulationState();
}

class _insertionSimulationState extends State<insertionSimulation> {
  List<int> _values=[57,  61,  39,  62,  63,  25,  31,  51,  19,  86,  21,  75,  96,
                    28,  54,  67,  34,  13,  47,  56,  10,  76,  81,  71,  80,  41, 
                    ];

 
  _sort () async
  { int temp;
    for (int i = 1; i < _values.length; i++) {
    temp=_values[i];
    int j=i-1;
    while(j>=0 && _values[j]>temp){
      _values[j+1]=_values[j];
      j--;
    }
    _values[j+1]=temp;
    await Future.delayed(Duration(milliseconds:500 ));
         setState(() {
      
             });
  }

   

  }

  @override

  void initState(){
    super.initState();


  }

  Widget build(BuildContext context) {
    
    int count=0;
    return Scaffold(
      appBar: AppBar(
        title:Text('Bubble sort'),
        backgroundColor: Colors.black45,
        
        automaticallyImplyLeading: true,
        leading: IconButton(icon: Icon(Icons.arrow_back_ios,),
        onPressed: () {
                
              }
      ),
      ),

      body: Container(
        child: Row(
          children:_values.map((int e) {
            count++;
            return CustomPaint(
              painter: BarViewer(
                value:e,
                index: count,
                width:5,
              ),
            );
            
          }).toList(),
        ),
      ),

      bottomNavigationBar: 
      

      FlatButton(
              shape: const StadiumBorder(),
          textColor: Colors.white,
           color: Colors.teal,
          splashColor: Colors.blue[900],
              child:Text("Start",
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight:FontWeight.bold ,fontSize: 30,),
          ),

              onPressed: _sort,)
    );
  }
}

class BarViewer extends CustomPainter{
  final double width;
    final int  value;
    final int index;

    BarViewer({this.value, this.index, this.width});
  @override
  void paint(Canvas canvas, Size size) {
      Paint paint= Paint();
     

     if(this.value==57){
       paint.color=HexColor("#b71c1c");
     }

     if(this.value==61){
       paint.color=HexColor("#880e4f");
     }

     if(this.value==39){
       paint.color=HexColor("#4a148c");
     }

     if(this.value==62){
       paint.color=HexColor("#311b92");
     }

     if(this.value==63){
       paint.color=HexColor("#1a237e");
     }

     if(this.value==25){
       paint.color=HexColor("#0d47a1");
     }

     if(this.value==31){
       paint.color=HexColor("#0277bd");
     }

     if(this.value==51){
       paint.color=HexColor("#006064");
     }


     if(this.value==19){
       paint.color=HexColor("#00bfa5");
     }

     if(this.value==86){
       paint.color=HexColor("#1b5e20");
     }

     if(this.value==21){
       paint.color=HexColor("#33691e");
     }

     if(this.value==75){
       paint.color=HexColor("#827717");
     }

     if(this.value==96){
       paint.color=HexColor("#f57f17");
     }

     if(this.value==28){
       paint.color=HexColor("#ff6f00");
     }

     if(this.value==54){
       paint.color=HexColor("#fb8c00");
     }

     if(this.value==67){
       paint.color=HexColor("#bf360c");
     }

     if(this.value==34){
       paint.color=HexColor("#3e2723");
     }

     if(this.value==13){
       paint.color=HexColor("#212121");
     }

     if(this.value==47){
       paint.color=HexColor("#263238");
     }

     if(this.value==56){
       paint.color=HexColor("#f44336");
     }

     if(this.value==10){
       paint.color=HexColor("#9c27b0");
     }

     if(this.value==76){
       paint.color=HexColor("#673ab7");
     }

     if(this.value==81){
       paint.color=HexColor("#3f51b5");
     }

     if(this.value==71){
       paint.color=HexColor("#2196f3");
     }

     if(this.value==80){
       paint.color=HexColor("#4db6ac");
     }

     if(this.value==41){
       paint.color=HexColor("#9ccc65");
     }

     

     


    
      paint.strokeWidth=15;
      paint.strokeCap=StrokeCap.square;

     canvas.drawLine(Offset(index * width*3, 0),Offset(index * width*3, 4*value.ceilToDouble()), paint);
     
    }
  
    @override
    bool shouldRepaint(covariant CustomPainter oldDelegate) {
    
    return true;
  }

}