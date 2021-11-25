import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui/rendering/measure_size.dart';
import 'package:ui/core/globals.dart' as globals;

class Discover extends StatefulWidget {
  const Discover({Key key}) : super(key: key);

  @override
  _DiscoverState createState() => _DiscoverState();
}

class _DiscoverState extends State<Discover> {
  List<String> banners = <String>[];
  List<String> popular = <String>[];
  List<String> all = <String>[];

  @override
  void initState() {
    super.initState();
    banners.add('assets/scene.jpg');
    banners.add('assets/scene_box.jpg');
    banners.add('assets/scene.jpg');
    popular.add('assets/scene_box.jpg');
    popular.add('assets/scene_box.jpg');
    popular.add('assets/scene_box.jpg');
    for (int i = 0; i < 20; i++) {
      all.add('assets/scene_box.jpg');
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(
            vertical: 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Discover',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  )),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Icon(Icons.search),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          isDense: true,
                          hintText: 'Search',
                          hintStyle: TextStyle(color: Colors.grey),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.grey, width: 0.5),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey,
                            ),
                          ),
                          contentPadding: EdgeInsets.all(5)),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 125,
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: ListView.separated(
                  separatorBuilder: (context, index) => SizedBox(
                    width: 10,
                  ),
                  scrollDirection: Axis.horizontal,
                  itemCount: banners.length,
                  itemBuilder: (context, index) {
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(15.0),
                      child: Image.asset(banners[index],
                          fit: BoxFit.fill,
                          width: MediaQuery.of(context).size.width -
                              (MediaQuery.of(context).size.width / 3)),
                    );
                  },
                ),
              ),
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
                  height: globals.cardSize.height,
                  child: ListView.builder(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    scrollDirection: Axis.horizontal,
                    itemCount: popular.length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin:
                            EdgeInsets.symmetric(vertical: 0, horizontal: 2.5),
                        decoration: BoxDecoration(),
                        child: Stack(
                          children: [
                            ClipRRect(
                                child: Image.asset(popular[index],
                                    fit: BoxFit.fill,
                                    height: globals.cardSize.height,
                                    width: globals.cardSize.width)),
                            Positioned(
                              bottom: 10,
                              right: 10,
                              left: 10,
                              child: Text(
                                'Popular',
                                style: TextStyle(color: Colors.white),
                                textAlign: TextAlign.center,
                              ),
                            )
                          ],
                        ),
                      );
                    },
                  )),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  'All Categories',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              GridView.builder(
                shrinkWrap: true,
                padding: EdgeInsets.symmetric(horizontal: 10),
                physics: NeverScrollableScrollPhysics(),
                itemCount: all.length,
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 200,
                    childAspectRatio: 3.5 / 2,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8),
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(),
                    child: Stack(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(15.0),
                            child: Image.asset(all[index],
                                fit: BoxFit.fill,
                                height: double.infinity,
                                width: double.infinity)),
                        Positioned(
                          bottom: 10,
                          right: 10,
                          left: 10,
                          child: Text(
                            'Category',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        )
                      ],
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
