import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget{


 @override
 createState() => _ContadorPageState();
 
}

class _ContadorPageState extends State<ContadorPage>{
  final _estil= TextStyle(fontSize: 24);
  int _contador = 10;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Contador amb Stateful"),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //print("Uep, com anam");
          setState(() {
            _contador++;
          });
        },
    );
  }
}