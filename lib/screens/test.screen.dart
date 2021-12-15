import 'package:flutter/material.dart';

class manee extends StatefulWidget {
  const manee({Key? key}) : super(key: key);

  @override
  _maneeState createState() => _maneeState();
}

class _maneeState extends State<manee> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Column(
            children: [
              Row(
                children: [
                  Text("data"),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
