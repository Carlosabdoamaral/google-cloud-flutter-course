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
  int _i = -1;
  String _username = "Clique para iniciar";
  List<String> _workers = ["Nome_01", "Nome_02", "Nome_03", "Nome_04", "Nome_05"];

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
