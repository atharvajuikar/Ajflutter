import 'package:flutter/material.dart';

class TenthWidget extends StatelessWidget {
  //A widget that attempts to size the child to a specific aspect ratio.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("AspectRatio Widget")),
      body: Center(
        child: AspectRatio(
          aspectRatio: 2.0,
          child: Container(height: 50.0, width: 50.0, color: Colors.red),
        ),
      ),
    );
  }
}