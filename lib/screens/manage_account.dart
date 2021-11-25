import 'package:flutter/material.dart';

class ManageAccount extends StatefulWidget {
  const ManageAccount({Key key}) : super(key: key);

  @override
  _ManageAccountState createState() => _ManageAccountState();
}

class _ManageAccountState extends State<ManageAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        automaticallyImplyLeading: true,
        backgroundColor: Colors.white,
        title: Text(
          'Manage Account',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10),
        children: [
          SizedBox(
            height: 30,
          ),
          Text(
            'Account Information',
            style: TextStyle(fontSize: 16, color: Colors.grey),
          ),
          SizedBox(
            height: 30,
          ),
          Text('Phone Number', style: TextStyle()),
          SizedBox(
            height: 20,
          ),
          Text('Email', style: TextStyle()),
          SizedBox(
            height: 20,
          ),
          Text('Password', style: TextStyle()),
          SizedBox(
            height: 40,
          ),
          Text(
            'Account Control',
            style: TextStyle(fontSize: 16, color: Colors.grey),
          ),
          SizedBox(
            height: 30,
          ),
          Text('Delete Account', style: TextStyle()),
        ],
      ),
    );
  }
}
