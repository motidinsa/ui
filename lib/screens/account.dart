import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:ui/screens/manage_account.dart';

class Account extends StatefulWidget {
  const Account({Key key}) : super(key: key);

  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
                    'Settings and Privacy',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  )),
              SizedBox(
                height: 15,
              ),
              Expanded(
                child: ListView(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  children: [
                    Card(
                      elevation: 2,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 5,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10, top: 5),
                              child: Text(
                                'ACCOUNT',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            ListTile(
                              leading: Icon(
                                Icons.person,
                                size: 22,
                                color: Colors.grey,
                              ),
                              title: Text(
                                'Manage Account',
                                style: TextStyle(),
                              ),
                              trailing: Icon(
                                Icons.chevron_right,
                                color: Colors.grey,
                              ),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => ManageAccount()));
                              },
                            ),
                            ListTile(
                              leading: Icon(
                                Icons.lock,
                                size: 22,
                                color: Colors.grey,
                              ),
                              title: Text(
                                'Privacy',
                                style: TextStyle(),
                              ),
                              trailing: Icon(
                                Icons.chevron_right,
                                color: Colors.grey,
                              ),
                              onTap: () {},
                            ),
                            ListTile(
                              leading: Icon(
                                Icons.person,
                                size: 22,
                                color: Colors.grey,
                              ),
                              title: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Security and Login',
                                  style: TextStyle(),
                                ),
                              ),
                              trailing: Icon(
                                Icons.chevron_right,
                                color: Colors.grey,
                              ),
                              // contentPadding: EdgeInsets.zero,
                              onTap: () {},
                            ),
                            ListTile(
                              leading: Icon(
                                Icons.person,
                                size: 22,
                                color: Colors.grey,
                              ),
                              title: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Balance',
                                  style: TextStyle(),
                                ),
                              ),
                              trailing: Icon(
                                Icons.chevron_right,
                                color: Colors.grey,
                              ),
                              // contentPadding: EdgeInsets.zero,
                              onTap: () {},
                            ),
                            ListTile(
                              leading: Icon(
                                Icons.share,
                                size: 22,
                                color: Colors.grey,
                              ),
                              title: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'QR Code',
                                  style: TextStyle(),
                                ),
                              ),
                              trailing: Icon(
                                Icons.chevron_right,
                                color: Colors.grey,
                              ),
                              // contentPadding: EdgeInsets.zero,
                              onTap: () {},
                            ),
                            ListTile(
                              leading: Icon(
                                Icons.person,
                                size: 22,
                                color: Colors.grey,
                              ),
                              title: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Share Profile',
                                  style: TextStyle(),
                                ),
                              ),
                              trailing: Icon(
                                Icons.chevron_right,
                                color: Colors.grey,
                              ),
                              // contentPadding: EdgeInsets.zero,
                              onTap: () {},
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Card(
                      elevation: 2,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 5,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10, top: 5),
                              child: Text(
                                'CONTENT & ACTIVITY',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            ListTile(
                              leading: Icon(
                                Icons.notifications_outlined,
                                size: 22,
                                color: Colors.grey,
                              ),
                              title: Text(
                                'Push Notification',
                                style: TextStyle(),
                              ),
                              trailing: Icon(
                                Icons.chevron_right,
                                color: Colors.grey,
                              ),
                              // contentPadding: EdgeInsets.zero,
                              onTap: () {},
                            ),
                            ListTile(
                              leading: Icon(
                                Icons.font_download_outlined,
                                size: 22,
                                color: Colors.grey,
                              ),
                              title: Text(
                                'App Language',
                                style: TextStyle(),
                              ),
                              trailing: Icon(
                                Icons.chevron_right,
                                color: Colors.grey,
                              ),
                              // contentPadding: EdgeInsets.zero,
                              onTap: () {},
                            ),
                            ListTile(
                              leading: Icon(
                                Icons.lightbulb,
                                size: 22,
                                color: Colors.grey,
                              ),
                              title: Text(
                                'Dark Mode',
                                style: TextStyle(),
                              ),
                              trailing: Icon(
                                Icons.chevron_right,
                                color: Colors.grey,
                              ),
                              // contentPadding: EdgeInsets.zero,
                              onTap: () {},
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
