import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutterrouting/new-page-2.dart';
import 'new-page.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: new ThemeData(
        primarySwatch: Colors.blue,
//        primaryColor: Colors.lightGreen
      ),
      home: new HomePage(),
//      One of the ways to do routing
//      routes: <String , WidgetBuilder>{
//        "/a":(BuildContext context) => new NewPage("THIS IS FIRST PAGE"),
//        "/b":(BuildContext context) => new NewestPage("This is Second Page")

    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Drawer App"),
        elevation: defaultTargetPlatform == TargetPlatform.android?6.0:0.0,
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
                accountName: new Text("Prateek Bansal"),
                accountEmail: new Text("prateekbansal64@gmail.com"),
              currentAccountPicture: new CircleAvatar(
                child: new Icon(Icons.person),

                backgroundColor: Colors.deepPurpleAccent,
              ),
              otherAccountsPictures: <Widget>[
                new CircleAvatar(
                  backgroundColor: Colors.white,
                  child: new Text("MC"),
                )
              ],
            ),

            new ListTile(
              title: new Text("Page 1"),
              trailing: new Icon(Icons.arrow_upward),
              onTap: (){
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=>new NewPage("Page One")));
//                Navigator.of(context).pushNamed("/a");
              },
            ),
            new Divider(
              thickness: 2.0,
              color: Colors.amberAccent,
            ),
            new ListTile(
              title: new Text("Page 2"),
              trailing: new Icon(Icons.arrow_downward),
              onTap: (){
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=>new NewestPage("Page Two")));
//                Navigator.of(context).pushNamed("/b");
              },
            ),
            new Divider(
              thickness: 2.0,
              color: Colors.amberAccent,
            ),
            new ListTile(
              title: new Text("Close"),
              trailing: new Icon(Icons.close),
              onTap: ()=>Navigator.of(context).pop(),
            ),
            new Divider(
              color: Colors.black,
              thickness: 1.0,
            ),
          ],
        ),
      ),
      body: new Container(
        child: new Center(
          child: new Text("Home Page"),
        ),
      ),
    );
  }
}
