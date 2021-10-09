import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import 'home.screen.dart';
import 'payment.screen.dart';
import 'status_reserve.screen.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  final _url = 'https://flutter.dev';


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF00A3FF),
          title: Text(
            'รายละเอียด',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: Container(
            margin: EdgeInsets.only(top: 20, left: 20, right: 20),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  this._buildShopHospital(),
                  SizedBox(
                    height: 10,
                  ),
                  this._buildVaccine(),
                  SizedBox(
                    height: 10,
                  ),
                  this._buildButtonReserve(),
                  SizedBox(
                    height: 15,
                  ),
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

  Widget _buildShopHospital() {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                height: 525,
                decoration: BoxDecoration(
                    border: Border.all(width: 5, color: Color(0xFFFF922E)),
                    color: Color(0xFF00A3FF),
                    borderRadius: BorderRadius.circular(15)),
                child: Column(
                  children: [
                    Text(
                      'โรงพยาบาลแพร่',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 13, right: 13),
                      child: Column(
                        children: [
                          Container(
                            height: 175,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage('images/hospital1.jpg')),
                              borderRadius: BorderRadius.all(Radius.circular(15.0)),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Text("ที่อยู่ : " ,style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Color(0xFFFFCB14)),),
                              Text("144 ถนน ช่อแฮ ตำบล ในเวียง ",style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),),
                            ],
                          ),
                          Row(
                            children: [
                              Text("อำเภอเมืองแพร่ แพร่ 54000" ,style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),),
                            ],
                          ),
                          Row(
                            children: [
                              Text("เบอร์โทรศัพท์ : " ,style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Color(0xFFFFCB14)),),
                              Text("054 533 500" ,style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),),
                            ],
                          ),
                          Row(
                            children: [
                              Text("Fackbook : " ,style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Color(0xFFFFCB14)),),
                              Text("Phrae hospital" ,style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),),
                            ],
                          ),
                          Row(
                            children: [
                              Text("Line : " ,style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Color(0xFFFFCB14)),),
                              Text("@Phraehospital" ,style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),),
                            ],
                          ),
                          Row(
                            children: [
                              Text("E-mail : " ,style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Color(0xFFFFCB14)),),
                              Text("Phraehospital@hotmail.com" ,style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),),
                            ],
                          ),
                          this._buildButtonGoogleMap(),
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

  Widget _buildVaccine() {
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
                    borderRadius: BorderRadius.circular(15)),
                child: Column(
                  children: [
                    Text(
                      'วัคซีน Moderna',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 12, right: 12),
                      child: Column(
                        children: [
                          Container(
                            height: 175,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage('images/moderna.jpg')),
                              borderRadius: BorderRadius.all(Radius.circular(15.0)),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Text("จำนวนที่ได้รับ : " ,style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Color(0xFFFFCB14)),),
                              Text("2 เข็ม",style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),),
                            ],
                          ),
                          Row(
                            children: [
                              Text("ผลข้างเคียง : " ,style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Color(0xFFFFCB14)),),
                              Text("อาจมีอาการรู้สึกไม่สบาย" ,style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold , color: Colors.white),),
                            ],
                          ),
                          Row(
                            children: [
                              Text("ปิดจองวันที่ : " ,style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Color(0xFFFFCB14)),),
                              Text("16/11/2564" ,style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold , color: Colors.white),),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                  height: 50,
                                  width: 160,
                                  decoration: BoxDecoration(
                                      color: Color(0xFFEC7063),
                                      borderRadius: BorderRadius.circular(15)),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('ราคา 3,400 บาท', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color(0xFFF4D03F)),)
                                  ],
                                ),
                              ),
                              Text("(รวมค่าบริการกับวัคซีน 2 เข็ม)" ,style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Color(0xFFF4D03F))),
                            ],
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

  Widget _buildButtonReserve() {
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
                        return PaymentSrceen();
                      }))
                    },

                    child: Text(
                      'สั่งจอง',
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

  Widget _buildButtonGoogleMap() {
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
                    onPressed: () =>{
                      launch('https://goo.gl/maps/2pMo46Bpp97GzzYHA')
                    },

                    child: Text(
                      'Google Map',
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

  void _launchURL() async =>
      await canLaunch(_url) ? await launch(_url) : throw 'Could not launch $_url';
}
