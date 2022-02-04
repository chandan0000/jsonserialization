import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:jsonserialization/userModel.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  UserModel userObject = new UserModel(
      id: "0001", fullname: "CHandan", email: "kumarchandan41u@gmail");
  String userJSON =
      '{"id": "001", "fullname": "chandan", "email":"kumarchandan41u@gmail.com"}';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    //serliaztion
                    Map<String, dynamic> userMap = userObject.toMap();
                    var json = jsonEncode(userMap);
                    print(json);
                  },
                  child: Text("Serialize")),
              SizedBox(
                width: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    var decode = jsonDecode(userJSON);
                    Map<String, dynamic> userMap = decode;
                    UserModel newUser = new UserModel.fromMap(userMap);
                    print(newUser.fullname.toString());
                  },
                  child: Text("De-Serialize")),
            ],
          ),
        ),
      ),
    );
  }
}
