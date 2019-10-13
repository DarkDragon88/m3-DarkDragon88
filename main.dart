import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello World',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello World"),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Next screen'),
          onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondRoute()),
            );
          },
        ),
      ),
    );
  }
}

class SecondRoute extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome"),
      ),
      body: ListView(
        children: <Widget>[
          new RaisedButton(
            child: new Align(
              alignment: FractionalOffset.bottomRight,
              child: Text('Return'),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          new RaisedButton(
            child: new Align(
              alignment: FractionalOffset.bottomLeft,
              child: Text('List of items'),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ThirdRoute()),
              );
            },
          ),
          ],
        ),
      );
    }
  }

class ThirdRoute extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("List of items"),
      ),
      body: Center(
        child: RaisedButton(
          child: new Align(
            alignment: FractionalOffset.bottomRight,
            child: Text('Return to previous'),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}