import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class TentangKami extends StatelessWidget {
  const TentangKami({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            
            transformAlignment: Alignment.center,
            
            padding: EdgeInsets.only(bottom: 150,top: 150),
            child: ElevatedButton(
              child: Text("Website",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              onPressed: () async {
                final url = 'https://fauzan.teksi.my.id/my-app/';

            
               if (await canLaunch(url)) {
                 await launch(
                   url,
                   forceSafariVC: true,
                   forceWebView: true,
                   enableJavaScript: true,
                 );
               }
              }
            ),
           
          ),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.only(bottom: 150),
            child: ElevatedButton(
              child: Text("Instagram",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              onPressed: () async {
                final url = "https://www.instagram.com/fauzan_maulanayusuf/";

            
               if (await canLaunch(url)) {
                 await launch(
                   url,
                   forceSafariVC: true,
                   forceWebView: true,
                   enableJavaScript: true,
                 );
               }
              }
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.only(bottom: 0),
            child: ElevatedButton(
              child: Text("Facebook",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              onPressed: () async {
                final url = "https://www.instagram.com/fauzan_maulanayusuf/";

            
       if (await canLaunch(url)){
        await launch(url,forceSafariVC: false);
       }
              }
            ),
          ),
        ],
      ),
    
    );
    // ignore: dead_code
    Future openBrowserURL({
      required String url,
      bool inApp = false,
    }) async {
      if (await canLaunch(url)) {
        await launch(
          url,
          forceSafariVC: inApp,
          forceWebView: inApp,
          enableJavaScript: true,
        );
      }
    }
  }
}
