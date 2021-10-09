import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:file_picker/file_picker.dart';

import 'home.screen.dart';
import 'pending.screen.dart';
import 'status_reserve.screen.dart';

class EvidenceScreen extends StatefulWidget {
  const  EvidenceScreen ({Key? key}) : super(key: key);

  @override
  _EvidenceScreenState createState() => _EvidenceScreenState();
}

class _EvidenceScreenState extends State< EvidenceScreen> {
  late final ValueChanged<PlatformFile> onOpenedFile;
  DateTime? date;
  TimeOfDay? time;

  var OpenFile;

  String getText(){
    if (date == null){
      return 'วันที่โอน';
    } else {
      return '${date!.month}/${date!.day}/${date!.year}';
    }
  }

  String getTime(){
    if (time == null){
      return 'เวลาที่โอน';
    } else {
      return '${time!.hour} : ${time!.minute}'+' น.';
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF00A3FF),
          title: Text(
            'ส่งหลักฐานการชำระเงิน',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: Container(
            margin: EdgeInsets.only(top: 20, left: 20, right: 20),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "แนบหลักฐาน",
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                  this._buildDateAndTime(),
                  SizedBox(
                    height: 20
                  ),
                  this._buildButtonAttach(),
                  SizedBox(
                      height: 10
                  ),
                  Text(
                    "(รองรับไฟล์ นามสกุล Png , Jpg เท่านั้น)",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.red),
                  ),
                  SizedBox(
                      height: 310
                  ),
                  this._buildButtonConfrimAttach(),
                ],
              ),
            )),
        bottomNavigationBar: BottomAppBar(
          child: Container(
            decoration: BoxDecoration(color: Color(0xFF00A3FF)),
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return HomeScreen();
                    }));
                  },
                  icon: Icon(
                    FontAwesomeIcons.home,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
                IconButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return StatusReserveScreen();
                      }));
                    },
                    icon: Icon(
                      FontAwesomeIcons.swatchbook,
                      size: 30,
                      color: Colors.white,
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildDateAndTime() {
    return Column(
      children: [
        Container(
          child: Row(
            children: [
              Expanded(
                flex: 5,
                child: Firstdate(context),
              ),
              SizedBox(
                width: 30,
              ),
              Expanded(
                flex: 5,
                child: Time(context),
              )
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildButtonAttach() {
    return Column(
      children: [
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                  flex: 6,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFFFF922E),
                      padding: EdgeInsets.symmetric(vertical: 5.0),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      ),
                    ),
                    onPressed: () async {
                      final result = await FilePicker.platform.pickFiles(
                        // allowedExtensions: ['png','jpg']
                      );
                      if (result == null) return;

                      /// Open single file
                      final file = result.files.first;
                      openFile(file);

                      print('Name: ${file.name}');
                      print('Bytes: ${file.bytes}');
                      print('Size: ${file.size}');
                      print('Extension: ${file.extension}');
                      print('Path: ${file.path}');
                    },

                    child: Text(
                      'แนบไฟล์รูปภาพ',
                      style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ))
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildButtonConfrimAttach() {
    return Column(
      children: [
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                  flex: 6,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF2ECC71),
                      padding: EdgeInsets.symmetric(vertical: 5.0),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      ),
                    ),
                    onPressed: () => {
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return PendingScreen();
                      }))
                    },

                    child: Text(
                      'ยืนยันส่งหลักฐาน',
                      style: TextStyle(color: Colors.white, fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ))
            ],
          ),
        ),
      ],
    );
  }

  TextFormField Firstdate(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(8.0),
        prefixIcon: Icon(
          FontAwesomeIcons.calendarAlt,
          color: Colors.black,
          size: 20,
        ),
        isDense: true,
        filled: true,
        fillColor: Colors.white,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: Colors.black,
            width: 2.0,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: Colors.blue,
            width: 2.0,
          ),
        ),
        labelText: getText(),
        hintText: getText(),
      ),
      onTap: () {
        if (FocusScope.of(context).previousFocus()) {
          FocusScope.of(context).unfocus();
        } else {
          FocusScope.of(context).previousFocus();
        }
        pickDate(context);
      },
    );
  }

  TextFormField Time(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(8.0),
        prefixIcon: Icon(
          FontAwesomeIcons.clock,
          color: Colors.black,
          size: 20,
        ),
        isDense: true,
        filled: true,
        fillColor: Colors.white,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: Colors.black,
            width: 2.0,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: Colors.blue,
            width: 2.0,
          ),
        ),
        labelText: getTime(),
        hintText: getTime(),
      ),
      onTap: () {
        if (FocusScope.of(context).previousFocus()) {
          FocusScope.of(context).unfocus();
        } else {
          FocusScope.of(context).previousFocus();
        }
        pickTime(context);
      },
    );
  }

  Future pickDate(BuildContext context) async {
    final initialDate = DateTime.now();
    final newDate = await showDatePicker(
      context: context,
      initialDate: initialDate,
      firstDate: DateTime(DateTime.now().year - 5),
      lastDate: DateTime(DateTime.now().year + 5),
    );

    if (newDate == null) return;

    setState(() => date = newDate);
  }

  Future pickTime(BuildContext context) async {
    final initialTime = TimeOfDay(hour: 9, minute: 0);
    final newTime = await showTimePicker(
      context: context,
      initialTime: time ?? initialTime,
    );
    if (newTime == null) return;

    setState(() => time = newTime);

  }

  void openFile(PlatformFile file) {
    OpenFile.open(file.path!);
  }
}
