import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PictureDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var img=AssetImage("assets/images/cicada.jpg");
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("picture"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children:<Widget> [
            Image(
            image: AssetImage("assets/images/cicada.jpg"),
              width: 100.0
            ),
            Image.asset("assets/images/cicada.jpg",
              width: 100.0,
            ),

            Image(
              image: NetworkImage(
                  "https://avatars2.githubusercontent.com/u/20411648?s=460&v=4"),
              width: 100.0,
            ),
            Image.network(
              "https://avatars2.githubusercontent.com/u/20411648?s=460&v=4",
              width: 100.0,
            ),
            Image.network(
              "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1604847457502&di=9d560b5019f7f23dfc0ed70a2c614dd7&imgtype=0&src=http%3A%2F%2Fattachments.gfan.com%2Fforum%2F201503%2F19%2F211608ztcq7higicydxhsy.jpg",
              width: 100.0,
            ),


            Image(
              image: img,
              height: 50.0,
              width: 100.0,
              fit: BoxFit.fill,
            ),
            Image(
              image: img,
              height: 50,
              width: 50.0,
              fit: BoxFit.contain,
            ),
            Image(
              image: img,
              width: 100.0,
              height: 50.0,
              fit: BoxFit.cover,
            ),
            Image(
              image: img,
              width: 100.0,
              height: 50.0,
              fit: BoxFit.fitWidth,
            ),
            Image(
              image: img,
              width: 100.0,
              height: 50.0,
              fit: BoxFit.fitHeight,
            ),
            Image(
              image: img,
              width: 100.0,
              height: 50.0,
              fit: BoxFit.scaleDown,
            ),
            Image(
              image: img,
              height: 50.0,
              width: 100.0,
              fit: BoxFit.none,
            ),
            Image(
              image: img,
              width: 100.0,
              color: Colors.blue,
              colorBlendMode: BlendMode.difference,
              fit: BoxFit.fill,
            ),
            Image(
              image: img,
              width: 100.0,
              height: 200.0,
              repeat: ImageRepeat.repeatY ,
            )
          ].map((e){
            return Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: SizedBox(
                    width: 100,
                    child: e,
                  ),
                ),
                Text(e.toString())
              ],
            );
          }).toList()
        )
      ),
    );
  }
}