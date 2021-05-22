import 'package:fab_circular_menu/fab_circular_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webview_flutter/webview_flutter.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.black87,
      statusBarBrightness: Brightness.dark,
    ));
    return Scaffold(
      floatingActionButton: FabCircularMenu(
          fabColor: Colors.purpleAccent.shade700,
          ringColor: Colors.purpleAccent.shade700,
          ringWidth: 80,
          ringDiameter: 300,
          children: <Widget>[
            TextButton(
                style: TextButton.styleFrom(primary: Colors.white),
                child: Column(mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.group,
                      color: Colors.white,
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      "Chat Zone",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
                onPressed: ()async {
                  const url = 'https://t.me/joinchat/7Yjnnzlm46Q5ZGRl';

                  if (await canLaunch(url)) {
                    await launch(url);
                  } else {
                    throw 'Could not launch $url';
                  }
                },
                ),


            TextButton(
                style: TextButton.styleFrom(primary: Colors.white),
                child: Column(mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.video_call_outlined,
                      color: Colors.white,
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      "Join Now",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
                onPressed: () async {
                  const url = 'https://meet.google.com/ffv-togo-swp';

                  if (await canLaunch(url)) {
                    await launch(url);
                  } else {
                    throw 'Could not launch $url';
                  }
                },),




            TextButton(
                style: TextButton.styleFrom(primary: Colors.white),
                child: Column(mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.videogame_asset,
                      color: Colors.white,
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      "Game Zone",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
                onPressed: () async {
                  const url = 'https://classroom.google.com/c/MzQzNTExODY3NDA2?cjc=76elhmv';

                  if (await canLaunch(url)) {
                    await launch(url);
                  } else {
                    throw 'Could not launch $url';
                  }
                },),







          ]),
      appBar: PreferredSize(
        child: Container(),
        preferredSize: Size.fromHeight(0.0),
      ),
      body: WebView(
        initialUrl: "https://jyotimedia.com/4784-2/",
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}