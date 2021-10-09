import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'detail.screen.dart';
import 'home.screen.dart';
import 'status_reserve.screen.dart';

class SearchVaccines extends StatefulWidget {
  const SearchVaccines({Key? key}) : super(key: key);

  @override
  _SearchVaccinesState createState() => _SearchVaccinesState();
}

class _SearchVaccinesState extends State<SearchVaccines> {
  final urlImage = 'images/hospital1.jpg';

  final items_Province = ['แพร่', 'เชียงใหม่', 'ลำปาง', 'ลำพูน'];

  final items_vaccines = ['Moderna', 'Pfizer', 'sinopharm', 'Astrazeneca'];
  String? vaccine = 'Moderna';
  String? province = 'แพร่';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF00A3FF),
          title: Text(
            'ค้นหาวัคซีน',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: Container(
            margin: EdgeInsets.only(top: 20, left: 20, right: 20),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  this._buildDropdown(),
                  SizedBox(
                    height: 10,
                  ),
                  this._buildShopHospital(),
                  SizedBox(
                    height: 10,
                  ),
                  this._buildShopHospital2(),
                ],
              ),
            )
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
      ),
    );
  }

  Widget _buildDropdown() {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              flex: 4,
              child: Container(
                height: 45,
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 0),
                decoration: BoxDecoration(
                  color: Color(0xFF00A3FF),
                  borderRadius: BorderRadius.circular(15),
                  // border: Border.all(color: Colors.black, width: 1),
                ),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    dropdownColor: Color(0xFF00A3FF),
                    value: province,
                    iconSize: 36,
                    icon: Icon(
                      Icons.arrow_drop_down,
                      color: Colors.white,
                    ),
                    isExpanded: true,
                    items: items_Province.map(buildMenuProvince).toList(),
                    onChanged: (value) => setState(() => this.province = value),
                  ),
                ),
              ),
            ),
            Expanded(flex: 1, child: SizedBox()),
            Expanded(
              flex: 4,
              child: Container(
                height: 45,
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 1),
                decoration: BoxDecoration(
                  color: Color(0xFF00A3FF),
                  borderRadius: BorderRadius.circular(15),
                  // border: Border.all(color: Colors.black, width: 1),
                ),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    dropdownColor: Color(0xFF00A3FF),
                    value: vaccine,
                    iconSize: 36,
                    icon: Icon(
                      Icons.arrow_drop_down,
                      color: Colors.white,
                    ),
                    isExpanded: true,
                    items: items_vaccines.map(buildMenuVaccine).toList(),
                    onChanged: (value) => setState(() => this.vaccine = value),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  DropdownMenuItem<String> buildMenuProvince(String item) => DropdownMenuItem(
        value: item,
        child: Text(
          item,
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 16, color: Colors.white),
        ),
      );

  DropdownMenuItem<String> buildMenuVaccine(String item) => DropdownMenuItem(
        value: item,
        child: Text(
          item,
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 16, color: Colors.white),
        ),
      );

  Widget _buildShopHospital() {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              flex: 5,
              child: Container(
                height: 260,
                decoration: BoxDecoration(
                    color: Color(0xFF00A3FF),
                    borderRadius: BorderRadius.circular(15)),
                child: Column(
                  children: [
                    Text(
                      "โรงพยาบาลแพร่",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 11, right: 11),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 11,
                            child: Container(
                              height: 130,
                              width: 176,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage('images/hospital1.jpg')),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15.0)),
                                color: Colors.redAccent,
                              ),
                            ),
                          ),
                          Expanded(flex: 1, child: SizedBox()),
                          Expanded(
                            flex: 8,
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: Color(0xFF2ECC71),
                                            borderRadius:
                                                BorderRadius.circular(15)),
                                        height: 60,
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.end,
                                          children: [
                                            Text(
                                              'จำนวนคิวคงเหลือ\n49/100',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold,
                                              ),
                                              textAlign: TextAlign.center,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: Colors.orange,
                                            borderRadius:
                                                BorderRadius.circular(15)),
                                        height: 60,
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.end,
                                          children: [
                                            Text(
                                              'ยี่ห้อวัคซีน\nModerna',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold,
                                              ),
                                              textAlign: TextAlign.center,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    this._buildDetail(),
                    SizedBox(
                      height: 12,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ],
    );
  }

  Widget _buildShopHospital2() {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              flex: 5,
              child: Container(
                height: 260,
                decoration: BoxDecoration(
                    color: Color(0xFF00A3FF),
                    borderRadius: BorderRadius.circular(15)),
                child: Column(
                  children: [
                    Text(
                      "โรงพยาบาลจังหวัดแพร่คริสเตียน",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 11, right: 11),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 11,
                            child: Container(
                              height: 130,
                              width: 176,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage('images/hospital2.jpg')),
                                borderRadius:
                                BorderRadius.all(Radius.circular(15.0)),
                                color: Colors.redAccent,
                              ),
                            ),
                          ),
                          Expanded(flex: 1, child: SizedBox()),
                          Expanded(
                            flex: 8,
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: Color(0xFFE74C3C),
                                            borderRadius:
                                            BorderRadius.circular(15)),
                                        height: 60,
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.end,
                                          children: [
                                            Text(
                                              'จำนวนคิวคงเหลือ\n80/100',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold,
                                              ),
                                              textAlign: TextAlign.center,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: Colors.orange,
                                            borderRadius:
                                            BorderRadius.circular(15)),
                                        height: 60,
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.end,
                                          children: [
                                            Text(
                                              'ยี่ห้อวัคซีน\nModerna',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold,
                                              ),
                                              textAlign: TextAlign.center,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    this._buildDetail(),
                    SizedBox(
                      height: 12,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ],
    );
  }

  Widget _buildDetail() {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(left: 11, right: 11),
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
                        return DetailScreen();
                      }))
                    },

                    child: Text(
                      'ดูรายละเอียด',
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

  Widget _buildImage(BuildContext context) {
    return Image(image: AssetImage('images/hospital1.jpg'));
  }
}
