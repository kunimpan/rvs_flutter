import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SelectScreen extends StatefulWidget {
  const SelectScreen({Key? key}) : super(key: key);

  @override
  _SelectScreenState createState() => _SelectScreenState();
}

class _SelectScreenState extends State<SelectScreen> {
  final items = ['แพร่', 'เชียงใหม่', 'ลำปาง', 'ลำพูน'];
  String? value;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF00A3FF),
          leading: Icon(
            FontAwesomeIcons.userAlt,
            color: Colors.white,
            size: 20,
          ),
          title: Text(
            'ค้นหาวัคซีน',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
        body: Center(
          child: Container(
            decoration: BoxDecoration(),
            child: DropdownButton<String>(
              value: value,
              iconSize: 36,
              icon: Icon(
                Icons.arrow_drop_down,
                color: Colors.black,
              ),
              isExpanded: true,
              items: items.map(buildMenuItem).toList(),
              onChanged: (value) => setState(() => this.value = value),
            ),
          ),
        ),
      ),
    );
  }

  DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
        value: item,
        child: Text(
          item,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      );
}
