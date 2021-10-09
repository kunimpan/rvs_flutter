import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'detail.screen.dart';
import 'evidence.screen.dart';
import 'home.screen.dart';
import 'status_reserve.screen.dart';

class PaymentSrceen extends StatefulWidget {
  const PaymentSrceen({Key? key}) : super(key: key);

  @override
  _PaymentSrceenState createState() => _PaymentSrceenState();
}

class _PaymentSrceenState extends State<PaymentSrceen> {
  final urlImage = 'images/QRCODE.png';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xFF00A3FF),
            title: Text(
              'การชำระเงิน',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            centerTitle: true,
          ),
          body: Container(
            margin: EdgeInsets.only(top: 20, left: 20, right: 20),
            child: Column(
              children: [
                this._buildPrice(),
                SizedBox(
                  height: 10,
                ),
                this._buildButtonCancel(),
                SizedBox(
                  height: 10,
                ),
                this._buildButtonAttach(),
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
        ));
  }

  Widget _buildPrice() {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                height: 450,
                decoration: BoxDecoration(
                  border: Border.all(width: 5, color: Color(0xFFFF922E)),
                    color: Color(0xFF00A3FF),
                    borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  children: [
                    Text(
                      'กรุงไทย : 506-3-03322-9',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Text(
                      'ชื่อบัญชี : โรงพยาบาลแพร่',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Image.asset(urlImage,
                    height: 175,
                    width: 175,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '(กรุณาชำระเงินภายใน 24 ชั่วโมง)',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFFFCB14)),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 15, right: 15),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 25,
                            child: Text(
                              'ค่าวัคซีน',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                          Expanded(
                            flex: 5,
                            child: Text(
                              '3,400',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 15, right: 15),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 25,
                            child: Text(
                              'ค่าจิปาถะ',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                          Expanded(
                            flex: 5,
                            child: Text(
                              '100',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 15, right: 15),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: SizedBox(
                              width: 42.0,
                              height: 5.0,
                              child: DecoratedBox(
                                decoration: BoxDecoration(
                                    color: Colors.white
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 15, right: 15),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 25,
                            child: Text(
                              'รวมค่าใช้จ่ายทั้งหมด',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                          Expanded(
                            flex: 5,
                            child: Text(
                              '3,500',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                        ],
                      ),
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

  Widget _buildButtonCancel() {
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
                      primary: Colors.red,
                      padding: EdgeInsets.symmetric(vertical: 5.0),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      ),
                    ),
                    onPressed: () => {
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return DetailScreen();
                      }))
                    },

                    child: Text(
                      'ยกเลิกการจอง',
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
                      primary: Color(0xFF2ECC71),
                      padding: EdgeInsets.symmetric(vertical: 5.0),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      ),
                    ),
                    onPressed: () => {
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return EvidenceScreen();
                      }))
                    },

                    child: Text(
                      'ส่งหลักฐาน',
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
