import 'package:flutter/material.dart';

class DetailDataPage extends StatelessWidget {

  // 1) In Receiver, create a variable  where the data will be stored
  // It's going declared from constructor and cannot be changed
  final String newData ;

  // 2) Create constructor of DetailDataPage.

  DetailDataPage({required this.newData});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Detail Page data"),),
        body:Center(
          child: Text("This is detail page with data. Data passed is $newData"),
        )
    );
  }
}
