import 'package:flutter/material.dart';

class DetailPassBackPage extends StatefulWidget {
  @override
  _DetailPassBackPageState createState() => _DetailPassBackPageState();
}

class _DetailPassBackPageState extends State<DetailPassBackPage> {

  var dataTextEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Detail Page pass back"),),
        body:Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              children: [
                TextField(
                  controller: dataTextEditingController,
                  decoration: InputDecoration(
                    hintText: "Enter data to pass back"
                  ),
                ),
                TextButton(onPressed: (){
                  // Code to close a particular page
                  // The second paramater is optional, if you want to pass back data
                  Navigator.pop(context, dataTextEditingController.text);

                }, child: Text("Pass back data"))
              ],
            )
          ),
        )
    );
  }
}
