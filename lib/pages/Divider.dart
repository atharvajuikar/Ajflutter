import 'package:flutter/material.dart';

void main() => runApp(MyApp());

/// This Widget is the main application widget.
class MyApp extends StatelessWidget {
  static const String _title = 'Divider Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: SixthWidget(),
      ),
    );
  }
}

/// This is the stateless widget that the main application instantiates.
class SixthWidget extends StatelessWidget {
  SixthWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              color: Colors.amber,
              child: const Center(
                child: Text('Above'),
              ),
            ),
          ),
          const Divider(
            color: Colors.black,
            height: 20,
            thickness: 5,
            indent: 20,
            endIndent: 0,
          ),
          Expanded(
            child: Container(
              color: Colors.blue,
              child: const Center(
                child: Text('Below'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}