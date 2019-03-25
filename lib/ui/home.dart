import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  void _onPressed() {
    debugPrint("Jai mata di");
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.greenAccent.shade700,
        title: new Text(
          "Scaffold App",
          textDirection: TextDirection.ltr,
        ),
        actions: <Widget>[
          new IconButton(
              icon: new Icon(Icons.send),
              onPressed: () => debugPrint("JaiGanesha")),
          new IconButton(icon: new Icon(Icons.search), onPressed: _onPressed),
        ],
      ),
      backgroundColor: Colors.lightGreen.shade100,
      body: new Container(
        alignment: Alignment.center,
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              "Hello1",
              textDirection: TextDirection.ltr,
              style: new TextStyle(
                  fontSize: 14.5,
                  fontWeight: FontWeight.w800,
                  color: Colors.deepOrange),
            ),
            new InkWell(
              child: new Text("Push Me",),
              onTap: ()=>debugPrint("ButtonTap"),

            )
          ],
        ),
      ),
      floatingActionButton: new FloatingActionButton(onPressed: ()=>debugPrint("floating button pressed"),backgroundColor: Colors.green,tooltip: 'Going up',child: new Icon(Icons.call_missed),),
      bottomNavigationBar: new BottomNavigationBar(items:[
        new BottomNavigationBarItem(icon: new Icon(Icons.add), title: new Text("hey")),
        new BottomNavigationBarItem(icon: new Icon(Icons.print), title: new Text("akk")),
        new BottomNavigationBarItem(icon: new Icon(Icons.airline_seat_legroom_extra), title: new Text("bc")),
      ],onTap: (int i)=>debugPrint("$i"),),
    );
  }
}
