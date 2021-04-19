import 'package:flutter/rendering.dart';

import 'package:flutter/material.dart';
import 'LoginPage.dart';
import 'package:gazete/constanst/constants.dart';
import 'package:gazete/service/auth.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPage createState() => _MainPage();
}

class _MainPage extends State<MainPage> {
  AuthService _authService = AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page title'),
        actions: <Widget>[
          PopupMenuButton<String>(
            onSelected: choiceAction,
            itemBuilder: (BuildContext context) {
              return Constants.choices.map((String choice) {
                return PopupMenuItem<String>(
                  value: choice,
                  child: Text(choice),
                );
              }).toList();
            },
          ),
        ],
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverGrid.count(
            crossAxisCount: 3,
            children: [
              InkWell(
                child: Container(
                  margin: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(),
                ),
                onTap: () {},
              ),
              Container(
                margin: EdgeInsets.all(10.0),
                decoration: BoxDecoration(color: Colors.black38),
              ),
              Container(
                margin: EdgeInsets.all(10.0),
                decoration: BoxDecoration(color: Colors.black38),
              )
            ],
          )
        ],
      ),
    );
  }

  void choiceAction(String choice) {
    _authService.signOut();
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => Login(),
      ),
    );
  }
}
