import 'package:flutter/material.dart';
class NewestPage extends StatelessWidget {
  final String title;
  NewestPage(this.title);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text(title),
      ),
      body: new Center(
        child: new Text(title),
      ),
    );
  }
}
