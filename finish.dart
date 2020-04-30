import 'main.dart';
import 'package:flutter/material.dart';

class finish extends StatefulWidget {
  @override
  _finishState createState() => _finishState();
}

class _finishState extends State<finish> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          Navigator.pushNamed(context, '/');
        });
      },
      child: Center(
        child: Text("game finished :))))"),
      ),
    );
  }
}
