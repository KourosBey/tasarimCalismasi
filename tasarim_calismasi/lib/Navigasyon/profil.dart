import 'package:flutter/material.dart';
import 'package:tasarim_calismasi/Navigasyon/stat_widget.dart';

class Profil extends StatefulWidget {
  @override
  _ProfilState createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 56,
            backgroundImage: NetworkImage(
                "https://pbs.twimg.com/profile_images/1338126191824343042/eDFzNPfQ.jpg"),
          ),
          SizedBox(
            height: 12.0,
          ),
          Text(
            "Deli Vahit",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          Text(
            "@delivahitmix",
            style: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.w400,
              fontSize: 16,
            ),
          ),
          SizedBox(
            height: 12.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              statWidget("Gönderi", "10"),
              statWidget("Takipçi", "120"),
              statWidget("Takip", "50"),
            ],
          ),
          SizedBox(
            height: 15.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FlatButton(
                onPressed: () {},
                color: Colors.indigo,
                splashColor: Colors.white,
                child: Text(
                  "Takip Et",
                  style: TextStyle(color: Colors.white),
                ),
                padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 8.0),
              ),
              SizedBox(
                width: 24.0,
              ),
              OutlineButton(
                onPressed: () {},
                child: Text("Mesaj"),
                padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 8.0),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Divider(
              height: 18.0,
              thickness: 0.6,
              color: Colors.black87,
            ),
          ),
          Expanded(
            child: Container(
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ),
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.symmetric(horizontal: 4.0),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                              "https://i1.sndcdn.com/artworks-tXB4eVVQFGdnsslS-tyNCGQ-t500x500.jpg"),
                        ),
                      ),
                    );
                  }),
            ),
          ),
        ],
      )),
    );
  }
}
