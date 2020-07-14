import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(

    title: 'AlertDailogue',
    home: FifthWidget(),
  ));
}

class FifthWidget extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(title: Text("Spacer Example"),),
        body: Center(child: Column(
          children: <Widget>[

   Row(
  children: <Widget>[
    Text('Begin',style: TextStyle(fontSize: 30)),
    Spacer(), // Defaults to a flex of one.
    Text('Middle',style: TextStyle(fontSize: 30)),
    // Gives twice the space between Middle and End than Begin and Middle.
    Spacer(flex: 2),
    Text('End',style: TextStyle(fontSize: 30)),
  ],
   ),
          ],),
        ),
);


  }

}