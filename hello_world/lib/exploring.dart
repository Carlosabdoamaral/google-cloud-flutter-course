import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const Exploring());
}

class Exploring extends StatelessWidget {
  const Exploring({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: const ExploringPage(title: 'Exploring'),
    );
  }
}

class ExploringPage extends StatefulWidget {
  const ExploringPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<ExploringPage> createState() => _ExploringPage();
}

class _ExploringPage extends State<ExploringPage> {
  int _counter = 0;
  int _i = 0;
  String _username = "Carlos Amaral";
  List<String> _workers = ["Carlos Alberto", "Jeferson Amaral", "Jonaine Barcelos"];

  void _chageWorker() {
    setState(() {
      _i++;

      try {
        _username = _workers[_i];
      } catch(e) {
        _i = 0;
        _username = _workers[_i];
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),

      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            FloatingActionButton(
              onPressed: _chageWorker,
              tooltip: "Mudar funcionário",
              child: const Icon(Icons.account_circle),
            ),
            Text(
              _username,
              style: Theme.of(context).textTheme.headline4,
            )
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

//style: Theme.of(context).textTheme.headline1,
