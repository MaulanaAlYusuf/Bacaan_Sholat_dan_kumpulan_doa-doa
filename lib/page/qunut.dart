
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class Qunut extends StatefulWidget {
  const Qunut({Key? key}) : super(key: key);


  @override
  State<Qunut> createState() => _QunutState();
}

class _QunutState extends State<Qunut> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff44aca0),
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
             Stack(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  margin: EdgeInsets.only(top: 35),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Color.fromARGB(180, 162, 207, 218)),
                  height: 230,
                  width: MediaQuery.of(context).size.width,
                  child: Container(
                    margin: EdgeInsets.only(top: 120, left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Doa Qunut",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Bacaan Doa Qunut dengan tafsirnya",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        )
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
                      color: Color.fromARGB(255, 255, 255, 255),
                    )),
              ),
              Align(
                alignment: Alignment.topRight,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                  child: Image.asset(
                    "assets/images/bg_quran.jpg",
                    width: 200,
                    height: 200,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(top: 250, right: 20),
                  child: Material(
                    elevation: 3,
                    borderRadius: BorderRadius.circular(50),
                    child: Container(
                      width: 120,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Color(0xff0e1446),
                      ),
                      child: Material(
                        borderRadius: BorderRadius.circular(50),
                        
                        color: Colors.transparent,
                        child: InkWell(
                          splashColor: Colors.amber,
                          borderRadius: BorderRadius.circular(50),
                          onTap: () {
                            showDialog(
                                context: context,
                                builder: (_) => AlertDialog(
                                      title: Center(
                                        child: Text("Doa Qunut"),
                                      ),
                                      content: SingleChildScrollView(
                                        child: Text(
                                          "Allah adalah Tuhan Yang Maha Esa, Tidak ada tuhan selain dia.",
                                          textAlign: TextAlign.justify,
                                        ),
                                      ),
                                    ));
                          },
                          
                            child: Center(
                              
                              child: Text(
                                "Tafsir",
                                style: TextStyle(
                                    letterSpacing: 2,
                                    fontSize: 18,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
            ],
          ),
         
          Expanded(
            flex: 1,
              child: Container(
            margin: EdgeInsets.only(top: 20),
            child: ListView(
              children: [
                Center(
                  child: Text(
                  "بِسْمِ اللَّهِ الرَّحْمَنِ الرَّحِيْم",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Center(
                  child: Text(
                    "Dengan menyebut nama Allah Yang Maha Pengasih Dan Lagi Maha penyayang",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontStyle: FontStyle.italic),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SelectableText(
            "اَللّهُمَّ اهْدِنِىْ فِيْمَنْ هَدَيْتَ وَعَافِنِى فِيْمَنْ عَافَيْتَ وَتَوَلَّنِىْ فِيْمَنْ تَوَلَّيْتَ وَبَارِكْ لِىْ فِيْمَا اَعْطَيْتَ وَقِنِيْ شَرَّ مَاقَضَيْتَ، فَاِنَّكَ تَقْضِىْ وَلاَ يُقْضَى عَلَيْكَ وَاِنَّهُ لاَ يَذِلُّ مَنْ وَالَيْتَ وَلاَ يَعِزُّ مَنْ عَادَيْتَ تَبَارَكْتَ رَبَّنَا وَتَعَالَيْتَ فَلَكَ الحَمْدُ عَلَى مَا قَضَيْتَ أَسْتَغْفِرُكَ وَأَتُوبُ إِلَيْكَ وَصَلَّى اللهُ عَلَى سَيِّدَنَا مُحَمَّدٍ النَّبِيِّْلاُمِّيِّ وَعَلَى آلِهِ وَصَحْبِهِ وَسَلَّمَ",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  margin: EdgeInsets.only(left: 10, right: 10),
                  child: SelectableText(
                    "اَALLAHUMMAH DIINII FIIMAN HADAIT' WA AAFINII FIMAN AAFAIT. WATAWALLANII FIIMAN TAWALLAIT WABAARIKLII FIIMAA A'THAIT. WAOINll BIRAHMATIKA SYARRA MAA QADLAIT. FA INNAKA TAQDLII W ALAA YUODLAA 'ALAIK, WA-INNAHU LAA YADZILLU MAN WAALAIT. WALAA YA'IZZU MAN AADAIT. TABAARAKTA RABBANAA WATA 'AALAIT. FALAKAL HAMDU 'ALAA MAA QADLAIT ASTAGHFIRUKA WA-ATUUBU I LAIK. WASHALLALLAAHU'ALAA SAYYIDINAA MUHAMMADIN NABYYIL UMMIYYI WA-'ALAA AALIHI WASHAHBIHI WASALLAM",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontStyle: FontStyle.italic,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  margin: EdgeInsets.only(left: 10, right: 10),
                  child: SelectableText(
                    "Ya Allah, berilah aku petunjuk seperti orang-orang yang telah Engkau beri petunjuk. Berilah aku kesehatan seperti orang yang telah Engkau beri kesehatan. Pimpinlah aku bersama-sama orang-orang yang telah Engkau pimpin. Berilah berkah pada segala apa yang telah Engkau pimpin. Berilah berkah pada segala apa yang telah Engkau berikan kepadaku. Dan peliharalah aku dari kejahatan yang Engkau pastikan. Karena sesungguhnya Engkau-lah yang menentukan dan tidak ada yang menghukum (menentukan) atas Engkau. Sesungguhnya tidaklah akan hina orang-orang yang telah Engkau beri kekuasaan.",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ))
        ],
      )),
    );
  }
}



