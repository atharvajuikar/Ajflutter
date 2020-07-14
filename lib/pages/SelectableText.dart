import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(

    title: 'AlertDailogue',
    home: ThirdWidget(),
  ));
}

class ThirdWidget extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(title: Text("Selectable Text"),),
        body: Center(child: Column(
          children: <Widget>[

    SelectableText(
  'HELLO JARVIS',
  
  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 100),
        
),],),),);


  }

}