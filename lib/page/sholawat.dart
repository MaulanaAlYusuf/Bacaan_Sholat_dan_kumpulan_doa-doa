import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:bacaan_sholat/model/model_sholawat.dart';
import 'package:flutter/services.dart' as rootBundle;

class SholawatPage extends StatefulWidget {
  const SholawatPage({Key? key}) : super(key: key);



  @override
  State<SholawatPage> createState() => _SholawatPageState();
}

class _SholawatPageState extends State<SholawatPage> {
  Future<List<Sholawat>> ReadJsonData() async {
    final jsonData =
        await rootBundle.rootBundle.loadString('assets/data/sholawat.json');
    final list = json.decode(jsonData) as List<dynamic>;
    return list.map((e) => Sholawat.fromJson(e)).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
               
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    margin: EdgeInsets.only(top: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.blue),
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    child: Container(
                      margin: EdgeInsets.only(top: 120, left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Kumpulan Solawat",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          
                        ],
                      ),
                    ),
                  ),
                ),
                Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                    onPressed: () => Navigator.of(context).pop(),
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    )),
              ),
                Align(
                  alignment: Alignment.topRight,
                    child: ClipRRect(
                      
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          bottomLeft: Radius.circular(30)),
                      child: Image.asset(
                        'assets/images/doa.png',
                        width: 200,
                      
                      ),
                    ),
                  ),
              ],
            ),
            SizedBox(
              height:10,
            ),
            Expanded(
              flex: 1,
              child: Container(
                child: FutureBuilder(
                  future: ReadJsonData(),
                  builder: (context, data) {
                    if (data.hasError) {
                      return Center(
                        child: Text("${data.error}"),
                      );
                    } else if (data.hasData) {
                      var items = data.data as List<Sholawat>;
                      return ListView.builder(
                          itemCount: items == null ? 0 : items.length,
                          itemBuilder: (context, index) {
                            return Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              elevation: 5,
                              margin: EdgeInsets.all(15),
                              child: Theme(
                                  data: Theme.of(context).copyWith(
                                      dividerColor: Colors.transparent),
                                  child: ExpansionTile(
                                    title: Text(
                                      items[index].name.toString(),
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    children: [
                                      Container(
                                        padding: EdgeInsets.all(8),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Expanded(
                                              flex:1,
                                                child: Container(
                                              padding:
                                                  EdgeInsets.only(bottom: 10),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                      left: 8,
                                                      right: 8,
                                                    ),
                                                    child: Text(
                                                      items[index]
                                                          .arabic
                                                          .toString(),
                                                      style: TextStyle(
                                                          fontSize: 20,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 8, right: 8),
                                                    child: Text(
                                                      items[index]
                                                          .latin
                                                          .toString(),
                                                      style: TextStyle(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontStyle:
                                                            FontStyle.italic,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                      left: 8,
                                                      right: 8,
                                                      top: 5,
                                                    ),
                                                    child: Text(
                                                      items[index]
                                                          .terjemahan
                                                          .toString(),
                                                      style: TextStyle(
                                                          fontSize: 14),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ))
                                          ],
                                        ),
                                      )
                                    ],
                                  )),
                            );
                          });
                    } else {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
