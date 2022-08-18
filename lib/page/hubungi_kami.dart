import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';

class HubungiKami extends StatelessWidget {
  const HubungiKami({Key? key}) : super(key: key);

  void launchwhatsapp({required number, required message})async{

    String url = "whatsapp://send?phone=$number&text=$message";

    await canLaunch(url) ? launch(url) : print("hubungi kami");

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.red,
      body: Center(
      child: ElevatedButton(
        
        onPressed: () {
        launchwhatsapp(number: "+62882001325834", message: "Saya ingin memberikan saran untuk anda");
      }, child: Text("Hubungi Kami",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
      )
       )
    );
  }
}