import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('Second Page',
          style: TextStyle(fontSize: 25.0, color: Colors.teal),
        ),
      ),
    );
  }
}