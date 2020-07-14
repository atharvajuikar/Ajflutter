import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(

    title: 'AlertDailogue',
    home: ForthWidget(),
  ));
}
class ForthWidget extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(title: Text("Flexible Example"),),
     body: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          color: Colors.lightBlue,
          height: 600,
          width: double.infinity,
            child: Center(
              child: Text(
                '600.0',
                style: TextStyle(fontSize: 40.0),
            ))),
        Flexible(
          fit: FlexFit.loose,
          child: Container(
            color: Colors.green,
            height: 600.0,
            width: double.infinity,
            child: Center(
              child: Text(
                'Flexible - Remaining space taken',
                style: TextStyle(fontSize: 40.0),
            ))),
        ),
      ],
    ),
  );
}
}