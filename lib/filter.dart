import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class ProvinsiSelected extends StatefulWidget {
  const ProvinsiSelected({Key? key}) : super(key: key);

  @override
  _ProvinsiSelectedState createState() => _ProvinsiSelectedState();
}

class _ProvinsiSelectedState extends State<ProvinsiSelected> {
  String _provinsi = "Silahkan Pilih Provinsi";

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox.expand(
            child: Container(
          // color: Colors.green,
          decoration: BoxDecoration(
              color: Colors.white,
              image: DecorationImage(
                  image: AssetImage("assets/images/indonesia.png"),
                  fit: BoxFit.contain)),
        )),
        Positioned(
            top: 50,
            left: 0,
            right: 240,
            // height: 10,
            // width: 10,
            child: Transform.rotate(
              angle: 90 * pi / 180,
              child: Container(
                height: 90,
                width: 150,
                decoration: BoxDecoration(
                    // color: Colors.blue,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Provinsi dipilih :"),
                    Text(
                      _provinsi,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            )),
        Positioned(
            top: 30,
            left: 290,
            // height: 10,
            // width: 10,
            child: InkWell(
              onTap: () {
                setState(() {
                  _provinsi = "Aceh";
                });
              },
              child: Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10)),
              ),
            )),
        Positioned(
            top: 65,
            left: 260,
            // height: 10,
            // width: 10,
            child: InkWell(
              onTap: () {
                setState(() {
                  _provinsi = "Sumatera Utara";
                });
              },
              child: Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10)),
              ),
            )),
        Positioned(
            top: 100,
            left: 235,
            // height: 10,
            // width: 10,
            child: InkWell(
              onTap: () {
                setState(() {
                  _provinsi = "Riau";
                });
              },
              child: Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10)),
              ),
            )),
        Positioned(
            top: 75,
            left: 205,
            // height: 10,
            // width: 10,
            child: InkWell(
              onTap: () {
                setState(() {
                  _provinsi = "Sumatera Barat";
                });
              },
              child: Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10)),
              ),
            )),
        Positioned(
            top: 110,
            left: 195,
            // height: 10,
            // width: 10,
            child: InkWell(
              onTap: () {
                setState(() {
                  _provinsi = "Jambi";
                });
              },
              child: Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10)),
              ),
            )),
        Positioned(
            top: 100,
            left: 165,
            // height: 10,
            // width: 10,
            child: InkWell(
              onTap: () {
                setState(() {
                  _provinsi = "Bengkulu";
                });
              },
              child: Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10)),
              ),
            )),
        Positioned(
            top: 150,
            left: 220,
            // height: 10,
            // width: 10,
            child: InkWell(
              onTap: () {
                setState(() {
                  _provinsi = "Kepulauan Riau";
                });
              },
              child: Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10)),
              ),
            )),
        Positioned(
            top: 130,
            left: 170,
            // height: 10,
            // width: 10,
            child: InkWell(
              onTap: () {
                setState(() {
                  _provinsi = "Sumatera Selatan";
                });
              },
              child: Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10)),
              ),
            )),
        Positioned(
            top: 160,
            left: 190,
            // height: 10,
            // width: 10,
            child: InkWell(
              onTap: () {
                setState(() {
                  _provinsi = "Kepulauan Bangka Belitung";
                });
              },
              child: Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10)),
              ),
            )),
        Positioned(
            top: 140,
            left: 140,
            // height: 10,
            // width: 10,
            child: InkWell(
              onTap: () {
                setState(() {
                  _provinsi = "Lampung";
                });
              },
              child: Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10)),
              ),
            )),
        _draggableScrollableSheet()
      ],
    );
  }
}

DraggableScrollableSheet _draggableScrollableSheet() {
  return DraggableScrollableSheet(
    initialChildSize: 0.1,
    minChildSize: 0.1,
    maxChildSize: 0.6,
    builder: (context, scrollController) {
      return Container(
          decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30)),
          ),
          child: Scrollbar(
              child: ListView.builder(
            controller: scrollController,
            itemCount: 1,
            itemBuilder: (context, index) {
              return Transform.rotate(
                angle: 100 * pi / 200,
                child: Container(
                  height: 400,
                  color: Colors.transparent,
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 30,
                          ),
                          Text(
                            "List Harga",
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 50,
                          ),
                          Text(
                            "😅",
                            style: TextStyle(fontSize: 140),
                          ),
                          Text("(Coming Soon)"),
                        ],
                      ),
                      // DetailHarga("assets/images/ayam.webp", "2500",
                      //     "assets/images/bamer.webp", "2000"),
                      // DetailHarga("assets/images/ayam.webp", "2500",
                      //     "assets/images/bamer.webp", "2000"),
                      // DetailHarga("assets/images/ayam.webp", "2500",
                      //     "assets/images/bamer.webp", "2000"),
                      // DetailHarga("assets/images/ayam.webp", "2500",
                      //     "assets/images/bamer.webp", "2000"),
                      // DetailHarga("assets/images/ayam.webp", "2500",
                      //     "assets/images/bamer.webp", "2000"),
                    ],
                  ),
                ),
              );
            },
          )));
    },
  );
}

class DetailHarga extends StatefulWidget {
  // const DetailHarga({Key? key}) : super(key: key);
  final String ikonHarga1;
  final String ikonHarga2;
  final String hargaItem1;
  final String hargaItem2;

  const DetailHarga(
      this.ikonHarga1, this.hargaItem1, this.ikonHarga2, this.hargaItem2);

  @override
  _DetailHargaState createState() => _DetailHargaState();
}

class _DetailHargaState extends State<DetailHarga> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: Colors.transparent,
      child: Row(
        children: [
          Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    // color: Colors.black,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(widget.ikonHarga1),
                            fit: BoxFit.cover)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(widget.hargaItem1)
                ],
              )),
          Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    // color: Colors.black,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(widget.ikonHarga2),
                            fit: BoxFit.cover)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(widget.hargaItem2)
                ],
              )),
        ],
      ),
    );
  }
}

class Posisi extends StatefulWidget {
  final double atas = 0.0;
  final double kanan = 0.0;
  final String prov = "";
  // const Posisi({Key? key}) : super(key: key);
  // const Posisi(this.atas, this.kanan, this.prov);

  @override
  _PosisiState createState() => _PosisiState();
}

class _PosisiState extends State<Posisi> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: 30,
        left: 320,
        // height: 10,
        // width: 10,
        child: InkWell(
          onTap: () {
            setState(() {
              _ProvinsiSelectedState()._provinsi = widget.prov;
            });
          },
          child: Container(
            height: 10,
            width: 10,
            decoration: BoxDecoration(
                color: Colors.black, borderRadius: BorderRadius.circular(10)),
          ),
        ));
  }
}
