import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe

// ignore: must_be_immutable
class HomeFp extends StatefulWidget {
  HomeFp({this.datas = const []});

  final List<dynamic> datas;

  @override
  _HomeFp createState() => _HomeFp();
}

class _HomeFp extends State<HomeFp> {
  final String apiUrl = "https://jibs.my.id/api/harga_komoditas";
  // List listData = [];
  // List listDagingAyam = [];
  // List listBeras = [];
  // List listDagingSapi = [];
  // List listTelurAyam = [];
  // List listBawangMerah = [];
  // List listBawangPutih = [];
  // List listCabaiMerah = [];
  // List listCabaiRawit = [];
  // List listMinyakGoreng = [];
  // List listGulaPasir = [];
  List<dynamic> dataList = [];
  String dataTertinggi = "";
  String provinsiDicari = "-";
  String hargaDicari = "-";
  TextEditingController cProvinsi = new TextEditingController();

  // Future<Map<String, dynamic>> fetchDataUsers() async {
  //   //using get
  //   final _response = await http.get(apiUrl);
  //   return json.decode(_response.body);
  // }

  void initState() {
    // fetchDataUsers().then((value) {
    setState(() {
      // print(value);
      dataList = widget.datas;
      //print(value['national_commodity_price']['Beras']);
      // listDagingAyam = value['national_commodity_price']['Daging Ayam'];
      //print(listData);
      // print(listDagingAyam[0]['name']);
    });
    // });
    super.initState();
  }

  // Future _get

  void Up() {
    String upper;
    for (var i = 0; i < dataList.length; i++) {
      if (dataList[i]['display'] != "-") {
        upper = dataList[i]['display'];
      } else {}
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back,
                color: Colors.black,
              )),
          title: Text(
            "Komoditas",
            style: TextStyle(color: Colors.black),
          ),
          // actions: [IconButton(onPressed: () {}, icon: Icon(Icons.bookmark))],
        ),
        body: Container(
          padding: EdgeInsets.only(top: 20, right: 10, left: 10),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                      width: 300,
                      child: TextField(
                        textInputAction: TextInputAction.search,
                        autocorrect: false,
                        decoration:
                            InputDecoration(hintText: 'Provinsi yang dicari'),
                        controller: cProvinsi,
                      )),
                  SizedBox(
                    width: 20,
                  ),
                  IconButton(
                      onPressed: () {
                        setState(() {
                          print(dataList);

                          for (var i = 0; i < dataList.length; i++) {
                            if (dataList[i]['name'].toString().toLowerCase() ==
                                cProvinsi.text.toLowerCase()) {
                              print("Data ada di index $i");
                              provinsiDicari = dataList[i]['name'];
                              hargaDicari = dataList[i]['display'];
                            }
                          }
                        });
                      },
                      icon: Icon(
                        Icons.search,
                        // size: 40,
                      ))
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 50,
                child: Column(
                  children: [
                    Container(
                      height: 40,
                      decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(12)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(provinsiDicari),
                          Text(
                            hargaDicari,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  Text(
                    "Daftar Harga Tersedia",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text("(mulai dari yang terendah ke tertinggi)"),
                  SizedBox(
                    height: 13,
                  ),
                  Container(
                    height: 520,
                    child: ListView.builder(
                      itemCount: dataList.length,
                      itemBuilder: (context, index) {
                        if (dataList[index]['display'] != "-") {
                          dataTertinggi = dataList[index]['name'];
                          return Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    // padding: EdgeInsets.all(),
                                    height: 70,
                                    width: double.infinity,
                                    // color: Colors.cyan,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.grey[200]),
                                    child: Row(
                                      children: [
                                        Container(
                                          padding: EdgeInsets.only(left: 15),
                                          // height: 100,
                                          width: 150,
                                          // color: Colors.amber,
                                          decoration: BoxDecoration(
                                              color: Colors.grey[300],
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(dataList[index]['name'],
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.bold)),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Expanded(
                                            flex: 1,
                                            child: Text(
                                              dataList[index]['display'],
                                              style: TextStyle(
                                                  fontSize: 38,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.cyan),
                                            )),
                                      ],
                                    ),
                                  ),

                                  SizedBox(
                                    height: 10,
                                  ),
                                  // Text("Yes"),
                                ],
                              ),
                            ],
                          );
                        } else {
                          // return Text(dataList[index]['name']);
                          return Container(
                            height: 1,
                          );
                        }
                      },
                      // mainAxisAlignment: MainAxisAlignment.center,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      // children: <Widget>[
                      //   SizedBox(
                      //     height: 10,
                      //   ),
                      //   Text(""),
                      //   // MenuUtama("assets/images/beras.jpeg", "Beras",
                      //   //     "assets/images/bawangmerah.jpeg", "Bawang Merah")
                      // ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
