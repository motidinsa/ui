import 'package:better_player/better_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:share_plus/share_plus.dart';

class Front extends StatefulWidget {
  const Front({Key key}) : super(key: key);

  @override
  _FrontState createState() => _FrontState();
}

class _FrontState extends State<Front> {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView(
          controller: _controller,
          scrollDirection: Axis.vertical,
          children: [
            FrontWidget(),
            FrontWidget(),
            FrontWidget(),
            FrontWidget(),
            FrontWidget(),
          ],
        ),
      ),
    );
  }
}

class FrontWidget extends StatefulWidget {
  const FrontWidget({Key key}) : super(key: key);

  @override
  _FrontWidgetState createState() => _FrontWidgetState();
}

class _FrontWidgetState extends State<FrontWidget> {
  BetterPlayerController _betterPlayerController;
  var betterPlayerConfiguration = BetterPlayerConfiguration(
    autoPlay: true,
    aspectRatio: 9 / 16,
    allowedScreenSleep: false,
    fit: BoxFit.fitWidth,
    controlsConfiguration: BetterPlayerControlsConfiguration(
      controlsHideTime: Duration(seconds: 30),
      enableMute: false,
      enableOverflowMenu: false,
      enableSkips: false,
      enableRetry: false,
      enableFullscreen: true,
      loadingWidget: SpinKitChasingDots(
        color: Colors.white,
        size: 40,
      ),
    ),
  );

  @override
  void initState() {
    super.initState();
    BetterPlayerDataSource betterPlayerDataSource = BetterPlayerDataSource(
        BetterPlayerDataSourceType.network,
        "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4");
    _betterPlayerController = BetterPlayerController(betterPlayerConfiguration,
        betterPlayerDataSource: betterPlayerDataSource);
  }

  @override
  void dispose() {
    _betterPlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Expanded(
              child: BetterPlayer(
                controller: _betterPlayerController,
              ),
            ),
          ],
        ),
        Align(
          alignment: Alignment.topCenter,
          child: Container(
            margin: EdgeInsets.only(top: 20, right: 20, left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.camera_alt,
                  color: Colors.white,
                ),
                Icon(
                  Icons.notifications,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            margin: EdgeInsets.only(left: 20, right: 20, bottom: 50),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: CircleAvatar(
                                radius: 15,
                                child: Image.asset("assets/user_profile.jpg"))),
                        SizedBox(width: 10),
                        Text(
                          'Kashif Hafeez',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Row(
                          children: [
                            Text('Follow',
                                style: TextStyle(
                                    fontSize: 16, color: Colors.white)),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.notifications_outlined,
                              color: Colors.white,
                              size: 28,
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 20),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Legend of tomorrow',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(height: 30),
                    Row(
                      children: [
                        Text(
                          '8250 views',
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        // Text(
                        //   '2 days ago',
                        //   style: TextStyle(fontSize: 16, color: Colors.white),
                        // ),
                        SizedBox(width: 5),
                        Text(
                          '44.2k likes',
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(width: 10),
                        Text(
                          '48.2k comments',
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(height: 25),
                    Row(
                      children: [
                        Icon(
                          Icons.favorite,
                          color: Colors.white,
                          size: 24,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          decoration: BoxDecoration(),
                          child: Icon(
                            Icons.chat_bubble,
                            color: Colors.white,
                            size: 22,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        GestureDetector(
                          onTap: () {
                            Share.share('https://www.google.com/');
                          },
                          child: Container(
                            decoration: BoxDecoration(),
                            child: Icon(
                              Icons.send,
                              color: Colors.white,
                              size: 24,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
