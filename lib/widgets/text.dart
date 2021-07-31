import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';




class text extends StatelessWidget{
final String title;
Color color;
FontWeight fontWeight; 
final double size;
//fontSize size;
final AlignmentGeometry align;
text({this.title,this.color,this.fontWeight,this.size,this.align});

@override
Widget build(BuildContext context){

  return Container(
        alignment:align ,
        child: Text(title,
            style: TextStyle(
            color:color,
            fontWeight: fontWeight,
            fontSize:size,
            ),
           
           ),
      );
}

}