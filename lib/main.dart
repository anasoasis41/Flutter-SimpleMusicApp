import 'package:flutter/material.dart';
import 'musique.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Anas Music',
      theme: new ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'Anas Music'),
    );
  }
}

class MyHomePage extends StatefulWidget {

  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  List<Musique> myListMusic = [
    new Musique('Music 1', 'AnasMusic', 'assets/un.jpg', 'https://codabee.com/wp-content/uploads/2018/06/un.mp3'),
    new Musique('Music 2', 'AnasMusic', 'assets/deux.jpg', 'https://codabee.com/wp-content/uploads/2018/06/deux.mp3'),
  ];

  Musique maMusicActuelle;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    maMusicActuelle = myListMusic[0];
  }

  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      appBar: new AppBar(
        centerTitle: true,
        backgroundColor: Colors.grey[900],
        title: new Text(widget.title),
      ),

      backgroundColor: Colors.grey[800],

      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            new Card(
              elevation: 9.0,
              child: new Container(
                width: MediaQuery.of(context).size.height / 2.5,
                child: new Image.asset(maMusicActuelle.imagePath),
              ),
            ),
            textAvecStyle(maMusicActuelle.titre, 1.5),
            textAvecStyle(maMusicActuelle.artiste, 1.0),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                textAvecStyle('0:0', 0.8),
                textAvecStyle('0:22', 0.8)
              ],
            )
          ],
        ),
      ),// This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Text textAvecStyle(String data, double scale) {
    return new Text(
      data,
      textScaleFactor: scale,
      textAlign: TextAlign.center,
      style: new TextStyle(
        color: Colors.white,
        fontSize: 20.0,
        fontStyle: FontStyle.italic
      ),
    );
  }

}












