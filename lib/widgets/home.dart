import 'package:flutter/material.dart';
import 'package:flutter_nav/widgets/detail.dart';
import 'package:flutter_nav/widgets/detail_data.dart';
import 'package:flutter_nav/widgets/detail_pass_back.dart';
import 'package:fluttertoast/fluttertoast.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // 2) Create a controller (TextEditingController) where you will link the form to this controller

  var _dataController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigation Demo"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            children: [
              TextButton(
                  onPressed: () {
                    FocusScope.of(context).unfocus();
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => DetailPage()));
                  },
                  child: Text("Go to detail page")),
              TextField(
                controller: _dataController,
                decoration: InputDecoration(
                    hintText:
                "Enter data to be passed to second page"),
                keyboardType: TextInputType.text
              ),
              TextButton(
                  onPressed: () {
                    FocusScope.of(context).unfocus();
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DetailDataPage(newData:
                      _dataController.text))
                    );

                  }, child: Text("Go to detail page with data")),
              TextButton(
                  onPressed: () async {
                    FocusScope.of(context).unfocus();
                    final result = await Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context)=>DetailPassBackPage())
                    );
                    Fluttertoast.showToast(
                        msg: result,
                        toastLength: Toast.LENGTH_LONG,
                        gravity: ToastGravity.BOTTOM
                    );
                  },
                  child: Text("Go to detail page pass back data"))
            ],
          ),
        ),
      ),
    );
  }
}
