import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'home.screen.dart';
import 'signup.srceen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool monVal = false;
  bool tuVal = false;
  bool wedVal = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: SingleChildScrollView(
            reverse: true,
            // padding: EdgeInsets.all(32),
            child: Column(
              children: [
                this._buildFormLogin(),
                SizedBox(
                  height: 120,
                ),
                Text(
                  "หากยังไม่มีบัญชี กดปุ่มลงทะเบียน",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                this._buildSignUpButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildImage(BuildContext context) {
    return Image(image: AssetImage('images/5.1.png'));
  }

  Widget _buildFormLogin() {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 40, left: 25, right: 25),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              this._buildImage(context),
              SizedBox(
                height: 35,
              ),
              this._buildUsername(),
              SizedBox(
                height: 35,
              ),
              this._buildPassword(),
              SizedBox(
                height: 4,
              ),
              this._buildCheckbox(),
              SizedBox(
                height: 4,
              ),
              this._buildLoginButton(),
              SizedBox(
                height: 10,
              ),
              Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "ลืมรหัสผ่าน ?",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  )
              )
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

  Widget _buildLoginButton() {
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
                        return HomeScreen();
                      }))
                    },

                    child: Text(
                      'เข้าสู่ระบบ',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ))
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildSignUpButton() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          margin: EdgeInsets.only(left: 25, right: 25),
          child: Row(
            children: [
              Expanded(
                  flex: 6,
                  child: OutlinedButton(
                    onPressed: () => {
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return SignupScreen();
                      }))
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: 5.0),
                      side: BorderSide(
                          color: Color(0xFF00A3FF),
                          width: 1.0,
                          style: BorderStyle.solid),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      ),
                    ),
                    child: Text(
                      'ลงทะเบียน',
                      style: TextStyle(fontSize: 20),
                    ),
                  ))
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
                  child: Text("จำรหัสผ่าน", style: TextStyle(fontSize: 16),)
              ),
            ],
          ),
        ),
      ],
    );
  }
}
