import 'package:flutter/cupertino.dart';

class GamePage extends StatefulWidget {
  final String title;
  GamePage(this.title);

  @override
  GamePageState createState() => GamePageState();
}

class GamePageState extends State<GamePage> {
  GamePageState() {
//    this._presenter = GamePresenter(_movePlayed, _onGameEnd);
  }

  @override
  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Text(widget.title),
//      ),
//      body: Column(
//        children: <Widget>[
//          Padding(
//            padding: const EdgeInsets.all(60),
//            child: Text(
//              "You are playing as X",
//              style: TextStyle(fontSize: 25),
//            ),
//          ),
//          Expanded(
//            child: GridView.count(
//              crossAxisCount: 3,
//              // generate the widgets that will display the board
//              children: List.generate(9, (idx) {
//                return Field(
//                    idx: idx,
//                    onTap: _movePlayed,
//                    playerSymbol: getSymbolForIdx(idx));
//              }),
//            ),
//          ),
//        ],
//      ),
//    );
  }
}
