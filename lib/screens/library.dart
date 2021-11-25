import 'package:flutter/material.dart';
import 'package:ui/core/globals.dart' as globals;

class Library extends StatefulWidget {
  const Library({Key key}) : super(key: key);

  @override
  _LibraryState createState() => _LibraryState();
}

class _LibraryState extends State<Library> {
  List<String> popular = <String>[];
  List<String> history = <String>[];
  List<String> saved = <String>[];

  @override
  void initState() {
    super.initState();
    popular.add('assets/scene_box.jpg');
    popular.add('assets/scene_box.jpg');
    popular.add('assets/scene_box.jpg');
    popular.add('assets/scene_box.jpg');
    history.add('assets/scene_box.jpg');
    history.add('assets/scene_box.jpg');
    history.add('assets/scene_box.jpg');
    history.add('assets/scene_box.jpg');
    saved.add('assets/scene_box.jpg');
    saved.add('assets/scene_box.jpg');
    saved.add('assets/scene_box.jpg');
    saved.add('assets/scene_box.jpg');
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: 10,horizontal: 5
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
                alignment: Alignment.center,
                child: Text(
                  'Library',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                )),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                'Popular',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
                height: globals.cardSize.height + 25,
                child: ListView.builder(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  scrollDirection: Axis.horizontal,
                  itemCount: popular.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin:
                          EdgeInsets.symmetric(vertical: 0, horizontal: 2.5),
                      decoration: BoxDecoration(),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ClipRRect(
                              child: Image.asset(popular[index],
                                  fit: BoxFit.fill,
                                  height: globals.cardSize.height,
                                  width: globals.cardSize.width)),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'John Doe',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          )
                        ],
                      ),
                    );
                  },
                )),
            SizedBox(
              height: 10,
            ),
            Card(
              elevation: 1,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Row(
                  children: [
                    Icon(
                      Icons.access_time,
                      size: 22,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'History',
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            height: 2.5,
                          ),
                          Text(
                            '20 Videos',
                            style: TextStyle(
                                color: Colors.grey[700], fontSize: 15),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    OutlinedButton(
                      child: Text(
                        'See All',
                        style: TextStyle(color: Colors.grey, fontSize: 16),
                      ),
                      onPressed: () {},
                    )
                  ],
                ),
              ),
            ),
            // SizedBox(
            //   height: 10,
            // ),
            // Container(
            //     height: globals.cardSize.height,
            //     child: ListView.builder(
            //       padding: EdgeInsets.symmetric(horizontal: 5),
            //       scrollDirection: Axis.horizontal,
            //       itemCount: history.length,
            //       itemBuilder: (context, index) {
            //         return Container(
            //           margin:
            //               EdgeInsets.symmetric(vertical: 0, horizontal: 2.5),
            //           decoration: BoxDecoration(),
            //           child: Stack(
            //             children: [
            //               ClipRRect(
            //                   child: Image.asset(history[index],
            //                       fit: BoxFit.fill,
            //                       height: globals.cardSize.height,
            //                       width: globals.cardSize.width)),
            //               Positioned(
            //                 bottom: 10,
            //                 right: 10,
            //                 left: 10,
            //                 child: Text(
            //                   'History',
            //                   style: TextStyle(color: Colors.white),
            //                   textAlign: TextAlign.center,
            //                 ),
            //               ),
            //               Positioned(
            //                 right: 0,
            //                 top: 5,
            //                 child: Icon(
            //                   Icons.more_vert,
            //                   color: Colors.white,
            //                 ),
            //               )
            //             ],
            //           ),
            //         );
            //       },
            //     )),
            // SizedBox(
            //   height: 10,
            // ),
            Card(
              elevation: 1,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Row(
                  children: [
                    Icon(
                      Icons.access_time,
                      size: 22,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Saved',
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            height: 2.5,
                          ),
                          Text(
                            '20 Videos',
                            style: TextStyle(
                                color: Colors.grey[700], fontSize: 15),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    OutlinedButton(
                      child: Text(
                        'See All',
                        style: TextStyle(color: Colors.grey, fontSize: 16),
                      ),
                      onPressed: () {},
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
                height: globals.cardSize.height,
                child: ListView.builder(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  scrollDirection: Axis.horizontal,
                  itemCount: saved.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin:
                          EdgeInsets.symmetric(vertical: 0, horizontal: 2.5),
                      decoration: BoxDecoration(),
                      child: Stack(
                        children: [
                          ClipRRect(
                              child: Image.asset(saved[index],
                                  fit: BoxFit.fill,
                                  height: globals.cardSize.height,
                                  width: globals.cardSize.width)),
                          Positioned(
                            bottom: 10,
                            right: 10,
                            left: 10,
                            child: Text(
                              'Saved',
                              style: TextStyle(color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Positioned(
                            right: 0,
                            top: 5,
                            child: Icon(
                              Icons.more_vert,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    );
                  },
                ))
          ],
        ),
      ),
    ));
  }
}
