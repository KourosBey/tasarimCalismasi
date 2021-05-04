import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:gazete/Navigasyon/stat_widget.dart';
import 'package:gazete/service/auth.dart';

class Profil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("2gündür yeter"),
      ),
      body: GetUserName(),
    );
  }
}

var id;

class GetUserName extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    FirebaseAuth auth = FirebaseAuth.instance;
    CollectionReference ref = FirebaseFirestore.instance.collection("users");

    return FutureBuilder<DocumentSnapshot>(
      future: ref.doc(auth.currentUser.uid).get(),
      builder:
          (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {
        if (snapshot.hasError) {
          return Text("Uhh. Somethings went Wrong");
        }
        if (snapshot.connectionState == ConnectionState.waiting) {
          return CircularProgressIndicator();
        }
        if (snapshot.connectionState == ConnectionState.done) {
          Map<String, dynamic> data = snapshot.data.data();
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 56,
                  backgroundImage: NetworkImage(
                      "https://pbs.twimg.com/profile_images/1338126191824343042/eDFzNPfQ.jpg"),
                ),
                Text(
                  "${data['userName']}",
                ),
                SizedBox(
                  height: 12.0,
                ),
                Text(
                  "${data['email']}",
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
                        'Takip ET',
                        style: TextStyle(color: Colors.white),
                      ),
                      padding:
                          EdgeInsets.symmetric(horizontal: 50.0, vertical: 8.0),
                    ),
                    SizedBox(
                      width: 24.0,
                    ),
                    OutlineButton(
                      onPressed: () {},
                      child: Text("Mesaj"),
                      padding:
                          EdgeInsets.symmetric(horizontal: 50.0, vertical: 8.0),
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
            ),
          );
        }
      },
    );
  }
}
