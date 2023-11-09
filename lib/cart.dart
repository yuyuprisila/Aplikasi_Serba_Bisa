import 'package:flutter/material.dart';

class Chart extends StatelessWidget {
  const Chart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Chart"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text('Ini adalah chart'),
          ],
        ),
      ),
    );
  }
}