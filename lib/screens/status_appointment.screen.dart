import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'home.screen.dart';
import 'status_payment.screen.dart';
import 'status_reserve.screen.dart';
import 'status_success.screen.dart';

class StatusAppointmentScreen extends StatefulWidget {
  const StatusAppointmentScreen({Key? key}) : super(key: key);

  @override
  _StatusAppointmentScreenState createState() =>
      _StatusAppointmentScreenState();
}

class _StatusAppointmentScreenState extends State<StatusAppointmentScreen> {
  final urlImage = 'images/QRCODE.png';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF00A3FF),
        title: Text(
          'สถานะ',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.only(top: 20, left: 20, right: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              this._buildAppointment(),
              SizedBox(
                height: 20,
              )
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
                  )),
            ],
          ),
        ),
      ),
    ));
  }

  Widget _buildAppointment() {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                height: 720,
                decoration: BoxDecoration(
                  border: Border.all(width: 5, color: Color(0xFFFF922E)),
                  color: Color(0xFF00A3FF),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'วันนัดหมาย',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    this._buildStatus(),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10, right: 10),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: SizedBox(
                              width: 42.0,
                              height: 4.0,
                              child: DecoratedBox(
                                decoration: BoxDecoration(color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20, left: 20, right: 20),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  "สถานที่ฉีด : ",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFFFFCB14)),
                                ),
                                Text(
                                  "โรงพยาบาลแพร่",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "วัคซีน : ",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFFFFCB14)),
                                ),
                                Text(
                                  "Moderna",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "เข็มที่ : ",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFFFFCB14)),
                                ),
                                Text(
                                  "1",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "คิวที่ : ",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFFFFCB14)),
                                ),
                                Text(
                                  "51",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "วันที่ : ",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFFFFCB14)),
                                ),
                                Text(
                                  "16/11/2564",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "เวลา : ",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFFFFCB14)),
                                ),
                                Text(
                                  "14.00 น.",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Image.asset(
                      urlImage,
                      height: 150,
                      width: 150,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'หมายเหตุ : นำ QR CODE พร้อมบัตรประจำ',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Text(
                      'ตัวประชาชนติดต่อรับบริการการฉีดวัคซีน',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Text(
                      'ตามวันนัดหม่ยกับโรงพยาบาล',
                      style: TextStyle(
                          fontSize: 14,
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

  Widget _buildStatus() {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              flex: 4,
              child: Text(
                'จอง',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
            Expanded(
              flex: 5,
              child: Text(
                'ชำระเงิน',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
            Expanded(
              flex: 5,
              child: Text(
                'วันนัดหมาย',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
            Expanded(
              flex: 4,
              child: Text(
                'สำเร็จ',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              flex: 7,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return StatusReserveScreen();
                  }));
                },
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(width: 5, color: Color(0xFF2ECC71)),
                      color: Color(0xFF00A3FF),
                      shape: BoxShape.circle),
                  height: 55,
                  child: Column(
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '1',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
                flex: 2,
                child: SizedBox(
                  child: DecoratedBox(
                    decoration: BoxDecoration(color: Colors.white),
                  ),
                  width: 10,
                  height: 4,
                )),
            Expanded(
              flex: 7,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return StatusPaymentScreen();
                  }));
                },
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(width: 5, color: Color(0xFF2ECC71)),
                      color: Color(0xFF00A3FF),
                      shape: BoxShape.circle),
                  height: 55,
                  child: Column(
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '2',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
                flex: 2,
                child: SizedBox(
                  child: DecoratedBox(
                    decoration: BoxDecoration(color: Colors.white),
                  ),
                  width: 10,
                  height: 4,
                )),
            Expanded(
              flex: 7,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return StatusAppointmentScreen();
                  }));
                },
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(width: 5, color: Color(0xFF2ECC71)),
                      color: Color(0xFF2ECC71),
                      shape: BoxShape.circle),
                  height: 55,
                  child: Column(
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '3',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
                flex: 2,
                child: SizedBox(
                  child: DecoratedBox(
                    decoration: BoxDecoration(color: Colors.white),
                  ),
                  width: 10,
                  height: 4,
                )),
            Expanded(
              flex: 7,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return StatusSuccessScreen();
                  }));
                },
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(width: 5, color: Color(0xFF2ECC71)),
                      color: Color(0xFF00A3FF),
                      shape: BoxShape.circle),
                  height: 55,
                  child: Column(
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '4',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
