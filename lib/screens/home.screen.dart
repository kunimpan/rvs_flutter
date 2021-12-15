import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rvs_flutter/screens/signup.srceen.dart';
import 'package:rvs_flutter/screens/testpage.dart';

import '../tabbar_material_widget.dart';
import 'edit_profile.screen.dart';
import 'search_vaccines.screen.dart';
import 'select.screen.dart';
import 'status_reserve.screen.dart';
import 'package:http/http.dart' as http;
import 'ReportCovid19.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  // List<ReportCovid19>? _dataFromWebAPI;

  final urlImage = 'images/pun_mini.png';
  var jsonData;
  // Map<String, int> data = {};
  late Future<dynamic> futureAlbum;
  ReportCovid19? _dataFromAPI;


  

  @override
  void initState(){

    super.initState();
    getReportCovid19();

    // futureAlbum = fetchAlbum();
  }

  // Future <void> getReportCovid19() async {
  //     var url = "https://covid19.ddc.moph.go.th/api/Cases/today-cases-all";
  //     var response = await http.get(Uri.parse(url));
  //     jsonData = jsonDecode(utf8.decode(response.bodyBytes));
  //
  //     // data['new_case'] = jsonData['new_case'];
  //     // data['new_death'] = jsonData['new_death'];
  //
  //     // print(response.body);
  //     print(jsonDecode);
  //   }



  // Future<dynamic> fetchAlbum() async {
  //   final response =
  //   await http.get(Uri.parse('https://covid19.ddc.moph.go.th/api/Cases/today-cases-all'));
  //
  //   print(response.body);
  //   if (response.statusCode == 200) {
  //     return jsonDecode(response.body);
  //   } else {
  //     throw Exception('Failed to load album');
  //   }
  // }
  // int index = 1;
  //
  // final pages = <Widget>[
  //   SelectScreen(),
  //   testpage(),
  // ];

   Future <void> getReportCovid19() async {
    var url = "https://covid19.ddc.moph.go.th/api/Cases/today-cases-all";
    var response = await http.get(Uri.parse(url));


    // _dataFromAPI = reportCovid19FromJson(response.body) as ReportCovid19?;
    print(response.body);
    setState(() {
      _dataFromAPI = reportCovid19FromJson(response.body);
    });

    // return ReportCovid19.fromJson(_dataFromAPI);

  }



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF00A3FF),
          leading: IconButton(onPressed: () =>{
            Navigator.push(context,
                MaterialPageRoute(builder: (context) {
                  return EditProfile();
                }))
          }, icon: Image.asset(urlImage)),
          actions: [

          ],
          title: Text(
            'นายโอภาสพันธ์ กลิ่นชื่นจิต',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: Container(
          margin: EdgeInsets.only(top: 20, left: 25, right: 25),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "ข้อมูลประจำวัน",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              this._buildDate(),
              SizedBox(
                height: 15,
              ),
              this._buildCumulativeAmount(),
              SizedBox(
                height: 15,
              ),
              this._buildDaily(),
              SizedBox(
                height: 15,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "จองวัคซีน",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              this._buildLoginButton(),
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
        // body: pages[index],
        // bottomNavigationBar: TabBarMaterialWidget(
        //   index: index,
        //   onChangedTab: onChangedTab,
        // ),
        // floatingActionButton: FloatingActionButton(
        //   child: Icon(Icons.add),
        //   onPressed: () => print('Hello World'),
        // ),
        // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }

  Widget _buildDate() {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              color: Colors.orange, borderRadius: BorderRadius.circular(15)),
          height: 60,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 10,
                child: Text(
                  'วันที่ 7 ตุลาคม 2564',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildCumulativeAmount() {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              color: Colors.lightBlueAccent,
              borderRadius: BorderRadius.circular(15)),
          height: 80,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 10,
                child: Text(
                  'ยอดผู้ติดเชื้อสะสม\n563,500 ราย',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildDaily() {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              flex: 7,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(15)),
                height: 84,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      // 'รักษาหาย\n${_dataFromAPI?.newCase}',
                      'รักษาหาย\n1,200',
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
            Expanded(flex: 1, child: SizedBox()),
            Expanded(
              flex: 7,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.blueGrey,
                    borderRadius: BorderRadius.circular(15)),
                height: 84,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'ใหม่\n14,000',
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
            Expanded(flex: 1, child: SizedBox()),
            Expanded(
              flex: 7,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.red, borderRadius: BorderRadius.circular(15)),
                height: 84,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'เสียชีวิต\n4,000',
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
          ],
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
                flex: 1,
                child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
                      side: BorderSide(
                          color: Color(0xFF00A3FF),
                          width: 1.0,
                          style: BorderStyle.solid),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      ),
                    ),
                    onPressed: () => {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return SearchVaccines();
                          }))
                        },
                    icon: Icon(
                      FontAwesomeIcons.search,
                      size: 25,
                    ),
                    label: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'ค้นหาวัคซีน',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.right,
                      ),
                    )),
              )
            ],
          ),
        ),
      ],
    );
  }

  Widget _test() {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              color: Colors.lightBlueAccent,
              borderRadius: BorderRadius.circular(15)),
          height: 80,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 10,
                child: Text(
                  'ยอดผู้ติดเชื้อสะสม\n563,500 ราย',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
  
  

  // void onChangedTab(int index){
  //   setState(() {
  //     this.index = index;
  //   });
  // }
}
