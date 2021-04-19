import 'package:flutter/rendering.dart';
import 'package:proje_calismasi_1/UIHelper.dart';
import 'package:flutter/material.dart';
import 'LoginPage.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPage createState() => _MainPage();
}

class _MainPage extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sliver Ex'),
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverGrid.count(
            crossAxisCount: 3,
            children: [
              InkWell(
                splashColor: Colors.red,
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
}
