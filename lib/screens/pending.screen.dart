import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'home.screen.dart';
import 'status_appointment.screen.dart';
import 'status_reserve.screen.dart';

class PendingScreen extends StatefulWidget {
  const PendingScreen({Key? key}) : super(key: key);

  @override
  _PendingScreenState createState() => _PendingScreenState();
}

class _PendingScreenState extends State<PendingScreen> {
  final urlImage = 'images/pending2.png';

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF00A3FF),
        title: Text(
          'รอตรวจสอบข้อมูล',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.only(top: 20, left: 20, right: 20),
        child: Column(
          children: [
            this._buildPeding(),
            SizedBox(
              height: 160,
            ),
            this._buildButtonStatus(),
          ],
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
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return HomeScreen();
                    }));
                  },
                  icon: Icon(
                    FontAwesomeIcons.home,
                    size: 30,
                    color: Colors.white,
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
                      color: Colors.white
                  )),
            ],
          ),
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   backgroundColor: Color(0xFF00A3FF),
      //   // selectedItemColor: Colors.orange,
      //   // unselectedItemColor: Colors.white,
      //   items: <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(
      //       icon: Icon(
      //         FontAwesomeIcons.home,
      //         color: Colors.white,
      //         size: 30,
      //       ),
      //     ),
      //     BottomNavigationBarItem(
      //         icon: Icon(
      //           FontAwesomeIcons.swatchbook,
      //           color: Colors.white,
      //           size: 30,
      //         ),
      //         label: 'หน้าหลัก'),
      //   ],
      // ),
    ));
  }

  Widget _buildPeding() {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                height: 360,
                decoration: BoxDecoration(
                  border: Border.all(width: 5, color: Color(0xFFFF922E)),
                  color: Color(0xFFFF922E),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Image.asset(urlImage,
                      height: 175,
                      width: 175,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'รอยืนยันสถานะการชำระในระบบ',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Text(
                      'ภายใน 2 วันทำการ ท่านจึงจะสามารถ',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Text(
                      'ดำเนินการในขั้นตอนไปได้',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          ],
        )
      ],
    );
  }

  Widget _buildButtonStatus() {
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
                        return StatusAppointmentScreen();
                      }))
                    },

                    child: Text(
                      'ดูสถานะปัจจุบัน',
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
}
