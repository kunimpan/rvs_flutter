import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'home.screen.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  DateTime? date;
  bool monVal = false;
  bool tuVal = false;
  bool wedVal = false;

  var OpenFile;

  String getText(){
    if (date == null){
      return 'เลือกวันเกิด';
    } else {
      return '${date!.month}/${date!.day}/${date!.year}';
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xFF00A3FF),
            title: Text(
              'แก้ไขโปรไฟล์',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            centerTitle: true,
          ),
          body: Container(
            margin: EdgeInsets.only(top: 20, left: 20, right: 20),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  this._buildFormProfile()
                ],
              ),
            ),
          ),
          bottomNavigationBar: BottomAppBar(
            child: Container(
              decoration: BoxDecoration(color: Color(0xFF00A3FF)),
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      FontAwesomeIcons.home,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        FontAwesomeIcons.swatchbook,
                        size: 30,
                        color: Colors.white,
                      )),
                ],
              ),
            ),
          ),
        ));
  }

  Widget _buildFormProfile() {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 20, left: 20, right: 20),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Text("ลงทะเบียน",
              //     style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
              // SizedBox(
              //   height: 15,
              // ),

              this._buildpictureButton(),
              SizedBox(
                height: 30,
              ),
              this._buildNameAndLastname(),
              SizedBox(
                height: 30,
              ),
              this._buildEmail(),
              SizedBox(
                height: 30,
              ),
              this._buildTelephone(),
              SizedBox(
                height: 30,
              ),
              Firstdate(context),
              SizedBox(
                height: 120,
              ),
              this._buildSubmitButton(),

            ],
          ),
        ),
      ],
    );
  }

  Widget _buildNameAndLastname() {
    return Column(
      children: [
        Container(
          child: Row(
            children: [
              Expanded(
                flex: 5,
                child: TextField(
                  style: TextStyle(fontSize: 16),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(8.0),
                    isDense: true,
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.black,
                        width: 1.0,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.blue,
                        width: 2.0,
                      ),
                    ),
                    labelText: 'ชื่อจริง',
                    hintText: 'ชื่อจริง',
                  ),
                ),
              ),
              SizedBox(
                width: 30,
              ),
              Expanded(
                flex: 5,
                child: TextField(
                  style: TextStyle(fontSize: 16),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(8.0),
                    isDense: true,
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.black,
                        width: 1.0,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.blue,
                        width: 2.0,
                      ),
                    ),
                    labelText: 'นามสกุล',
                    hintText: 'นามสกุล',
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildEmail() {
    return Column(
      children: [
        Container(
          child: Row(
            children: [
              Expanded(
                flex: 6,
                child: TextField(
                  style: TextStyle(fontSize: 16),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(8.0),
                    prefixIcon: Icon(
                      FontAwesomeIcons.mailBulk,
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
                        width: 1.0,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.blue,
                        width: 2.0,
                      ),
                    ),
                    labelText: 'อีเมล',
                    hintText: 'อีเมล',
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildTelephone() {
    return Column(
      children: [
        Container(
          child: Row(
            children: [
              Expanded(
                flex: 6,
                child: TextField(
                  style: TextStyle(fontSize: 16),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(8.0),
                    prefixIcon: Icon(
                      FontAwesomeIcons.phoneAlt,
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
                        width: 1.0,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.blue,
                        width: 2.0,
                      ),
                    ),
                    labelText: 'เบอร์โทรศัพท์',
                    hintText: 'เบอร์โทรศัพท์',
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildpictureButton() {
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
                      primary: Color(0xFF00A3FF),
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
                      'รูปภาพโปรไฟล์',
                      style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ))
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildSubmitButton() {
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
                        return HomeScreen();
                      }))
                    },
                    child: Text(
                      'บันทึกข้อมูล',
                      style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
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
          FontAwesomeIcons.birthdayCake,
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
            width: 1.0,
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

  void openFile(PlatformFile file) {
    OpenFile.open(file.path!);
  }
}
