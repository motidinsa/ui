import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:ui/screens/home.dart';
import 'package:ui/screens/register.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 15),
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).padding.top + 5,
              ),
              _headerWidget(),
              SizedBox(
                height: 10,
              ),
              _formWidget(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _headerWidget() {
    return Row(
      children: [
        InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back),
        ),
        SizedBox(
          width: 10,
        ),
        Container(
          height: 40,
          // child: Image.asset('assets/logo.png'),
        )
      ],
    );
  }

  Widget _formWidget() {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.all(
                Radius.circular(5),
              ),
            ),
            child: TextFormField(
              decoration: InputDecoration(
                  labelStyle: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                  border: InputBorder.none,
                  labelText: "Email or phone number"),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.all(
                Radius.circular(5),
              ),
            ),
            child: TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                  labelStyle: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                  border: InputBorder.none,
                  labelText: "Password"),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Home()));
            },
            child: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(vertical: 15),
              width: double.maxFinite,
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border.all(color: Colors.blue, width: 2)),
              child: Text(
                "Sign In",
                style:
                    TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Text("Need Help?"),
          SizedBox(
            height: 15,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SignUpPage()));
            },
            child: Container(
              decoration: BoxDecoration(),
              child: Text(
                "New User? Sign up now.",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          // SizedBox(
          //   height: 20,
          // ),
          // Text(
          //   "Sign-in is protected by Google reCAPTCHA to ensure you're not a bot. Learn more.",
          //   style: TextStyle(
          //     fontSize: 12,
          //   ),
          //   textAlign: TextAlign.center,
          // )
        ],
      ),
    );
  }
}
