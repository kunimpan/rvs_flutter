import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../main.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {

  DateTime? date;
  bool monVal = false;
  bool tuVal = false;
  bool wedVal = false;

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
        body: Container(
          child: SingleChildScrollView(
            // reverse: true,
            // padding: EdgeInsets.all(32),
            child: Column(
              children: [
                this._buildFormSignUp(),
                SizedBox(
                  height: 140,
                ),
                // this._buildSignUpButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildFormSignUp() {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 20, left: 25, right: 25),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("ลงทะเบียน",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
              SizedBox(
                height: 15,
              ),
              this._buildUsername(),
              SizedBox(
                height: 35,
              ),
              this._buildPassword(),
              SizedBox(
                height: 35,
              ),
              this._buildConfirmPassword(),
              SizedBox(
                height: 35,
              ),
              this._buildNameAndLastname(),
              SizedBox(
                height: 35,
              ),
              this._buildIdentitycard(),
              SizedBox(
                height: 35,
              ),
              this._buildEmail(),
              SizedBox(
                height: 35,
              ),
              this._buildTelephone(),
              SizedBox(
                height: 35,
              ),
              Firstdate(context),
              SizedBox(
                height: 10,
              ),
              this._buildCheckbox(),
              SizedBox(
                height: 10,
              ),
              this._buildSignUpButton(),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildUsername() {
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
                      FontAwesomeIcons.solidUser,
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
                    labelText: 'ชื่อผู้ใช้งาน',
                    hintText: 'ชื่อผู้ใช้งาน',
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildPassword() {
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
                      FontAwesomeIcons.key,
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
                    labelText: 'รหัสผ่าน',
                    hintText: 'รหัสผ่าน',
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildConfirmPassword() {
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
                      FontAwesomeIcons.key,
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
                    labelText: 'ยืนยันรหัสผ่าน',
                    hintText: 'ยืนยันรหัสผ่าน',
                  ),
                ),
              )
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

  Widget _buildIdentitycard() {
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
                      FontAwesomeIcons.addressCard,
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
                    labelText: 'เลขบัตรประจำตัวประชาชน',
                    hintText: 'เลขบัตรประจำตัวประชาชน',
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

  Widget _buildCheckbox() {
    return Column(
      children: [
        Container(
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Checkbox(
                    value: monVal,
                    onChanged: (value){
                      setState(() {
                        monVal = value!;
                      });
                    }
                ),
              ),
              Expanded(
                  flex: 9,
                  child: Text("คุณได้อ่านและยอมรับ เงื่อนไขการบิรการ", style: TextStyle(fontSize: 16),)
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildSignUpButton() {
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
                    onPressed: () => {
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return MyHomePage();
                      }))
                    },
                    child: Text(
                      'ลงทะเบียน',
                      style: TextStyle(color: Colors.white, fontSize: 20),
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
}
