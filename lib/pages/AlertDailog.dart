import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(
    title: 'AlertDailogue',
    home: FirstWidget(),
  ));
}
class FirstWidget extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(title: Text("Alert Dialogue Box"),),
        body: Column(children: <Widget>[
           AlertDialog(
        title: Text('AlertDialog Box'),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Text('WELCOME TO AVENGERS'),
              Text('Press Exit'),
            ],
          ),
        ),
        
         
          actions: <Widget>[
        FlatButton(
            child: Text('Exit'),
            onPressed: () {
              Navigator.of(context).pop();
            }
          )
          ]
          )
        ]
        )
    );
  }

}