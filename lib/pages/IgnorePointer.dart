import 'package:flutter/material.dart';
import 'package:flutter_aj/main.dart';

void main()
{
  runApp(MaterialApp(
    home: SeventhWidget(),
  ));
}
class SeventhWidget extends StatelessWidget{
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
 
  void _showScaffold(String message) {
    _scaffoldKey.currentState.showSnackBar(SnackBar(
      content: Text(message),
    ));
  }

  
   @override
    Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Ignore Pointer'),
        ),
        body: IgnorePointer(
          ignoring: true,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              RaisedButton(
                child: Text("Buttons"),
                onPressed: () {},
              ),
              SizedBox(
              child: RaisedButton(
                child: Text("Are"),
                onPressed: () {},
              ),
              ),
              RaisedButton(
                child: Text("Ignored"),
                onPressed: () {},
              )
            ],
          ),
        ));
  }
}
