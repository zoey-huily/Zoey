import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextFieldDemo extends StatelessWidget{
  //定义一个controller
  TextEditingController _unameController = TextEditingController();
  @override
  void initState() {
    //监听输入改变
    _unameController.addListener((){
      print("text:::"+_unameController.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("textfield"),
        centerTitle: true,
      ),
      body: Column(
        children:<Widget> [
          TextField(
            autofocus: true,
            controller: _unameController, //设置controller
            onChanged: (v) {
              print("onChange: $v");
            },
            decoration: InputDecoration(
                labelText: "用户名",
                hintText: "用户名或邮箱",
                prefixIcon: Icon(Icons.person)
            ),
          ),
          TextField(
            decoration: InputDecoration(
                labelText: "密码",
                hintText: "您的登录密码",
                prefixIcon: Icon(Icons.lock)
            ),
            obscureText: true,
          ),
        ],
      ),
    );
  }
}