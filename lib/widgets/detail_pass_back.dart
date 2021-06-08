import 'package:flutter/material.dart';

class DetailPassBackPage extends StatefulWidget {
  @override
  _DetailPassBackPageState createState() => _DetailPassBackPageState();
}

class _DetailPassBackPageState extends State<DetailPassBackPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Detail Page pass back"),),
        body:Center(
          child: Text("This is detail page with pass back"),
        )
    );
  }
}
