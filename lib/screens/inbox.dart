import 'package:flutter/material.dart';

class Inbox extends StatefulWidget {
  const Inbox({Key key}) : super(key: key);

  @override
  _InboxState createState() => _InboxState();
}

class _InboxState extends State<Inbox> {
  List<InboxWidget> inbox = <InboxWidget>[];

  @override
  void initState() {
    for (int i = 0; i < 5; i++) {
      inbox.add(InboxWidget(
          body: 'Hello John.',
          date: '18 Jun',
          image: 'assets/scene_box.jpg',
          name: 'John Appleaseed',
          time: '12 PM'));
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
                'Inbox',
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
                width: 15,
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
                      borderSide: BorderSide(color: Colors.grey, width: 0.5),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey,
                      ),
                    ),
                    contentPadding: EdgeInsets.all(5),
                  ),
                ),
              ),
              SizedBox(
                width: 15,
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          ListView.separated(
            shrinkWrap: true,
            itemBuilder: (context, index) => inbox[index],
            separatorBuilder: (context, index) => Divider(
              height: 0,
              color: Colors.grey,
            ),
            itemCount: inbox.length,
          )
        ],
      ),
    ));
  }
}

class InboxWidget extends StatefulWidget {
  final String image;
  final String date;
  final String time;
  final String name;
  final String body;

  const InboxWidget(
      {Key key,
      @required this.body,
      @required this.date,
      @required this.image,
      @required this.name,
      @required this.time})
      : super(key: key);

  @override
  _InboxWidgetState createState() => _InboxWidgetState();
}

class _InboxWidgetState extends State<InboxWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 7.5),
        child: ListTile(
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.asset(
              widget.image,
              fit: BoxFit.fill,
              height: 45,
              width: 45,
            ),
          ),
          title: Text(
            widget.name,
            style: TextStyle(
                fontSize: 15, fontWeight: FontWeight.w500, color: Colors.black),
          ),
          subtitle: Text(
            widget.body,
            style: TextStyle(fontSize: 13, color: Colors.grey[700]),
          ),
          trailing: Text(
            widget.date + ' ' + widget.time,
            style: TextStyle(fontSize: 14, color: Colors.grey[700]),
          ),
          dense: true,
          onTap: () {},
        )
        // Row(
        //   children: [
        //
        //     SizedBox(
        //       width: 10,
        //     ),
        //     Expanded(
        //         child: Column(
        //       mainAxisSize: MainAxisSize.min,
        //       crossAxisAlignment: CrossAxisAlignment.start,
        //       children: [
        //
        //         SizedBox(
        //           height: 2.5,
        //         ),
        //
        //       ],
        //     )),
        //     SizedBox(
        //       width: 15,
        //     ),
        //
        //   ],
        // ),
        );
  }
}
