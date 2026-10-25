import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {
  final _estil = TextStyle(fontSize: 24);
  int _contador = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contador amb Stateful'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Nombre de clicks:', style: _estil),
            Text('$_contador', style: _estil),
          ],
        ),
      ),
      floatingActionButton: _crearBotons(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  Widget _crearBotons() {
    return Row(
      children: [
        SizedBox(width: 30.0),
        FloatingActionButton(
          child: Icon(Icons.exposure_zero),
          onPressed: _reiniciar,
        ),
        Expanded(child: SizedBox()),
        FloatingActionButton(
          child: Icon(Icons.remove),
          onPressed: _restar,
        ),
        SizedBox(width: 5.0),
        FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: _sumar,
        ),
      ],
    );
  }

  void _sumar() {
    setState(() => _contador++);
  }

  void _restar() {
    setState(() => _contador--);
  }

  void _reiniciar() {
    setState(() => _contador = 0);
  }
}