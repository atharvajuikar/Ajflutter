import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp());
}


class NinthWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  
     MaterialApp(
       title: 'ToolTip App',
       home: Scaffold(
        appBar: AppBar(title: Text('Tooltip',)),
        body: Center(
          child: Container(
            child: Tooltip(
              message: 'FlutterLogo',
              child: FlutterLogo(size: 100,)),
          ),
        ),
    ),
     );
  }
}

