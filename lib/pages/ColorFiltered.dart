import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(

    title: '',
    home: EigthWidget(),
  ));
}
class EigthWidget extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(title: Text("ColorFiltered Example"),),
     body: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        ColorFiltered(colorFilter: ColorFilter.mode(Colors.red, BlendMode.modulate),
        child: Image.asset('assets/images/sheild.png'),),
      ],
     ),
  );
}
}