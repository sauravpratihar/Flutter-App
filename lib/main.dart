import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget{
  Widget build(BuildContext context){
    return new Header();
  }
}

class Header extends StatelessWidget{
  Widget build(BuildContext context){
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Header'),
        ),
        body: new Center(
          // child: new Text('Body is here'),
          child: new TextBox()
        ),
      ),
    );
  }

  printHello(){
    print('Hello');
  }
}


class TextBox extends StatelessWidget{
  final TextEditingController _controller = new TextEditingController();

  Widget build(BuildContext context){
    return new Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,

      // mainAxisSize: MainAxisSize.max,
      children: <Widget>[ 
        new Text(_controller.text),        
        new TextField(
        controller: _controller,
        decoration: new InputDecoration(
          hintText: 'Type Something',
        ),
      ),
        new RaisedButton(
          onPressed: (){ print(_controller.text); },
          child: new Text('Send'),
        ),
      ]
    );
  }
}