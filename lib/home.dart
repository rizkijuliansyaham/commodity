import 'package:commodity/filter.dart';
import 'package:commodity/listData.dart';
import 'package:commodity/test.dart';
import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:http/http.dart' as http;
import 'dart:convert';

// import 'package:madani/final_project/listData.dart';

class Home extends StatefulWidget {
  @override
  _Home createState() => _Home();
}

class _Home extends State<Home> {
  final String apiUrl = "https://jibs.my.id/api/harga_komoditas";
  // List listData = [];
  List listDagingAyam = [];
  List listBeras = [];
  List listDagingSapi = [];
  List listTelurAyam = [];
  List listBawangMerah = [];
  List listBawangPutih = [];
  List listCabaiMerah = [];
  List listCabaiRawit = [];
  List listMinyakGoreng = [];
  List listGulaPasir = [];
  String date = "";

  Future<Map<String, dynamic>> fetchDataUsers() async {
    //using get
    final _response = await http.get(apiUrl);
    return json.decode(_response.body);
  }

  void initState() {
    fetchDataUsers().then((value) {
      setState(() {
        date = value['updated_at'];
        // print("aaa" + date);
        //print(value);
        // print(value['national_commodity_price']['Beras']);
        listDagingAyam = value['national_commodity_price']['Daging Ayam'];
        listBeras = value['national_commodity_price']['Beras'];
        listDagingSapi = value['national_commodity_price']['Daging Sapi'];
        listTelurAyam = value['national_commodity_price']['Telur Ayam'];
        listBawangMerah = value['national_commodity_price']['Bawang Merah'];
        listBawangPutih = value['national_commodity_price']['Bawang Putih'];
        listCabaiMerah = value['national_commodity_price']['Cabai Merah'];
        listCabaiRawit = value['national_commodity_price']['Cabai Rawit'];
        listMinyakGoreng = value['national_commodity_price']['Minyak Goreng'];
        listGulaPasir = value['national_commodity_price']['Gula Pasir'];

        // print(listBawangPutih);
        // print(listBeras);
        // print(listGulaPasir);
        // print(listDagingSapi);
        // //print(listData);
        // print(date);
      });
    });
    super.initState();
  }

  // Future _get

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home',
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(tabs: [
              Tab(
                  child: Column(
                children: [
                  Icon(
                    Icons.home,
                    color: Colors.black,
                  ),
                  Text(
                    "Home",
                    style: TextStyle(color: Colors.black),
                  )
                ],
              )),
              Tab(
                  child: Column(
                children: [
                  Icon(
                    Icons.keyboard,
                    color: Colors.black,
                  ),
                  Text(
                    "Dummy",
                    style: TextStyle(color: Colors.black),
                  )
                ],
              )),
              Tab(
                  child: Column(
                children: [
                  Icon(
                    Icons.info,
                    color: Colors.black,
                  ),
                  Text(
                    "Info",
                    style: TextStyle(color: Colors.black),
                  )
                ],
              )),
            ]),
            backgroundColor: Colors.white,
            title: Text(
              "Last Update on " + date.toString(),
              style: TextStyle(color: Colors.black),
            ),
            // actions: [IconButton(onPressed: () {}, icon: Icon(Icons.bookmark))],
          ),
          body: TabBarView(
            children: [
              GridView.count(
                crossAxisCount: 2,
                // crossAxisSpacing: 0.2,
                mainAxisSpacing: 1.0,
                children: <Widget>[
                  MenuUtama(
                      "assets/images/ayam.webp", "Daging Ayam", listDagingAyam),
                  MenuUtama("assets/images/beras.jpeg", "Beras", listBeras),
                  MenuUtama(
                      "assets/images/sapi.webp", "Daging Sapi", listDagingSapi),
                  MenuUtama(
                      "assets/images/telur.webp", "Telur Ayam", listTelurAyam),
                  MenuUtama("assets/images/bamer.webp", "Bawang Merah",
                      listBawangMerah),
                  MenuUtama("assets/images/baput.webp", "Bawang Putih",
                      listBawangPutih),
                  MenuUtama("assets/images/camer.jpeg", "Cabai Merah",
                      listCabaiMerah),
                  MenuUtama("assets/images/caraw.jpeg", "Cabai Rawit",
                      listCabaiRawit),
                  MenuUtama("assets/images/minyak.jpeg", "Minyak Goreng",
                      listMinyakGoreng),
                  MenuUtama(
                      "assets/images/gula.jpeg", "Gula Pasir", listGulaPasir),
                ],
              ),
              // Icon(Icons.ac_unit),
              ProvinsiSelected(),
              Detail(),
            ],
            //
          ),
        ),
      ),
    );
  }
}

class MenuUtama extends StatefulWidget {
  final String fotoSatu;
  final String kataSatu;
  final List<dynamic> data;

  const MenuUtama(this.fotoSatu, this.kataSatu, this.data);

  @override
  State<MenuUtama> createState() => _MenuUtamaState();
}

class _MenuUtamaState extends State<MenuUtama> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: () {
            setState(() {
              Route route = new MaterialPageRoute(
                  builder: (context) => HomeFp(
                        datas: widget.data,
                      ));
              Navigator.push(context, route);
            });
          },
          child: Stack(
            alignment: AlignmentDirectional.bottomCenter,
            children: [
              Container(
                height: 180,
                width: 180,
                // color: Colors.amber,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black,
                    image: DecorationImage(
                        image: AssetImage(widget.fotoSatu), fit: BoxFit.cover)),
              ),
              Container(
                padding: EdgeInsets.all(10),
                width: 180,
                child: Text(
                  widget.kataSatu,
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
