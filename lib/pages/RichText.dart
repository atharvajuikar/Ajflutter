import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(

    title: 'AlertDailogue',
    home: SecondWidget(),
  ));
}
class SecondWidget extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(title: Text("Rich Text"),),
        body: Column(children: <Widget>[
           RichText(
  text: TextSpan(
    text: 'I ',
    style: DefaultTextStyle.of(context).style,
    children: <TextSpan>[
      TextSpan(text: 'AM', style: TextStyle(fontWeight: FontWeight.bold,fontStyle: FontStyle.italic)),
      TextSpan(text: ' IRON MAN',style: TextStyle( fontStyle: FontStyle.italic)),
    ],
  ),
           ),
           ],
           ),
  );

  }

}