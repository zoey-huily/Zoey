import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children:<Widget> [
          Text("Hello world",
            textAlign: TextAlign.left,
          ),
          Text("Hello world! I'm Jack. "*4,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          Text("Hello world",
          textScaleFactor: 1.5,
          )
        ],
      ),
    );
  }
  
}