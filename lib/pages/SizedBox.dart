import 'package:flutter/material.dart';

class EleventhWidget extends StatelessWidget {
  //A widget that attempts to size the child to a specific aspect ratio.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sized Box Example")),
      body:Center(
        
        child: SizedBox(
  width: 200.0,
  height: 300.0,
  child: const Card(child: Text('Sized Box')),
)
        ),
      
    );
  }
}



