import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IconDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    String icons = "";
// accessible: &#xE914; or 0xE914 or E914
    icons += "\uE914";
// error: &#xE000; or 0xE000 or E000
    icons += " \uE000";
// fingerprint: &#xE90D; or 0xE90D or E90D
    icons += " \uE90D";

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("icon"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child:Column(
          children:<Widget> [
            Text(icons,
              style: TextStyle(
                  fontFamily: "MaterialIcons",
                  fontSize: 24.0,
                  color: Colors.green
              ),
            ),
            Icon(Icons.accessible,color: Colors.green,),
            Icon(Icons.error,color: Colors.green,),
            Icon(Icons.fingerprint,color: Colors.green,),

          ],
        ),
      )
    );
  }
}