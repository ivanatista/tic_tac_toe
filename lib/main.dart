import 'package:flutter/material.dart';

import 'gamePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TicTacToe',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Xtreme Tic Tac Toe'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
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
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text(
              'Dare You Defeat the IA',
              style: TextStyle(fontSize: 20),
            ),
            // Button: Start a New Game
            Center(
              child: ButtonTheme(
                minWidth: 200,
                height: 80,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.amber, width: 2),
                    borderRadius: BorderRadius.all(Radius.circular(100)),
                  ),
                  color: Colors.amber,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => GamePage(widget.title),
                      ),
                    );
                  },
                  child: Text(
                    "New Game",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
//            StreamBuilder(
//              stream: _presenter.buildVictoriesStream(),
//              builder: (context, snapshot) {
//                var playerCount =
//                    _presenter.getVictoryCountFromStream(snapshot);
//                if (playerCount <= 0) {
//                  return Text(
//                    "No AI wins yet!",
//                    style: TextStyle(fontSize: 15),
//                  );
//                }
//                return Text(
//                  "Number of AI wins: $playerCount",
//                  style: TextStyle(fontSize: 15),
//                );
//              },
//            ),
          ],
        ),
      ),
//      floatingActionButton: FloatingActionButton(
////        onPressed: _incrementCounter,
////        tooltip: 'Increment',
////        child: Icon(Icons.add),
////      ),
    );
  }
}
