import 'package:bacaan_sholat/page/ayat_kursi_page.dart';
import 'package:bacaan_sholat/page/bacaan_sholat_page.dart';
import 'package:bacaan_sholat/page/dzikir.dart';
import 'package:bacaan_sholat/page/hubungi_kami.dart';
import 'package:bacaan_sholat/page/niat_sholat_page.dart';
import 'package:bacaan_sholat/page/qunut.dart';
import 'package:bacaan_sholat/page/sholawat.dart';
import 'package:bacaan_sholat/page/tentang_kami.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  MenuItem? _selectedMenu;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "bacaan sholat",
          textAlign: TextAlign.center,
        ),
        actions: [
          PopupMenuButton(
            onSelected: (value) => Navigator.push(context, MaterialPageRoute(builder: (context) => value == 0 ? const TentangKami() : const HubungiKami())),
            itemBuilder: (context) =>  [
              PopupMenuItem(
                value: 0,
                  child: Row(
                children: [
                  Icon(
                    Icons.web,
                    color: Colors.black,
                  ),
                  Text(
                    "Tentang Kami",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  )
                ],
              )),
              PopupMenuItem(
                value: 1,
                child: Row(
                  children: [
                    Icon(
                      Icons.comment,
                      color: Colors.black,
                    ),
                    Text(
                      "Hubungi Kami",
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: [
          Stack(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  margin: EdgeInsets.only(top: 15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          bottomLeft: Radius.circular(30)),
                      color: Colors.blue),
                  height: 220,
                  width: MediaQuery.of(context).size.width,
                  child: Container(
                    margin: EdgeInsets.only(top: 40, left: 20),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Bacaan Sholat",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                                
                          ),
                          Text("dan kumpulan doa-doa",style: TextStyle(color:Colors.white,fontSize: 16),)
                        ]),
                  ),
                ),
              ),
            ],
          ),
          Stack(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  margin: EdgeInsets.only(top: 15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(30),
                          bottomRight: Radius.circular(30)),
                      color: Colors.blue),
                  height: 220,
                  width: MediaQuery.of(context).size.width,
                  child: Container(
                    child: Center(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/images/ic_niat.png",
                              width: 100,
                              height: 100,
                            ),
                          ]),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
            color: Colors.blue,
            margin: EdgeInsets.only(left: 15,right: 15,top: 35),
            child: InkWell(
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => NiatSholat())),
              splashColor: Color.fromRGBO(33, 150, 243, 1),
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      "assets/images/ic_niat.png",
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      "Niat Sholat",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
          ),
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
            color: Colors.amber,
            margin: EdgeInsets.only(left: 15,right: 15,top: 35),
            child: InkWell(
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => BacaanSholat())),
              splashColor: Color.fromRGBO(33, 150, 243, 1),
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      "assets/images/bg_shalat.png",
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      "Bacaan Sholat",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
          ),
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
            color: Colors.red,
            margin: EdgeInsets.only(left: 15,right: 15,top: 35),
            child: InkWell(
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AyatKursi())),
              splashColor: Color.fromRGBO(33, 150, 243, 1),
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      "assets/images/ic_doa.png",
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      "Ayat Kursi",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                          
                    )
                  ],
                ),
              ),
            ),
          ),
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
            color: Color.fromARGB(255, 0, 255, 217),
           margin: EdgeInsets.only(left: 15,right: 15,top: 32),
            child: InkWell(
              onTap: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Qunut())),
              splashColor: Color.fromRGBO(33, 150, 243, 1),
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      "assets/images/doa.png",
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      "Doa Qunut",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
          ),
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
            color: Colors.blue,
           margin: EdgeInsets.only(left: 15,right: 15,top: 32),
            child: InkWell(
              onTap: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Dzikir())),
              splashColor: Color.fromRGBO(33, 150, 243, 1),
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      "assets/images/images.png",
                      width: 110,
                      height: 110,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      "Dzikir",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
          ),
           Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
            color: Colors.red,
           margin: EdgeInsets.only(left: 15,right: 15,top: 32),
           
            child: InkWell(
                  onTap: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => SholawatPage())),
              splashColor: Colors.red,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      "assets/images/index.png",
                      width: 110,
                      height: 110,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      "Sholawat",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
