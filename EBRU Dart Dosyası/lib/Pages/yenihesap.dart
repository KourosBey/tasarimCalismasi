import 'package:flutter/material.dart';

class YeniHesap extends StatefulWidget {
  @override
  _YeniHesapState createState() => _YeniHesapState();
}

class _YeniHesapState extends State<YeniHesap> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Yeni Hesap Oluştur'),
        backgroundColor: Colors.purple[100],
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                "https://static.vecteezy.com/system/resources/previews/000/278/317/original/pastel-background-vector.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 400,
                child: Card(
                  elevation: 4.0,
                  color: Colors.white70,
                  margin: EdgeInsets.only(left: 20, right: 20),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        TextFormField(
                          style: TextStyle(color: Color(0xFF000000)),
                          cursorColor: Color(0xFF9b9b9b),
                          keyboardType: TextInputType.text,
                          obscureText: false,
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.checkroom,
                              color: Colors.grey,
                            ),
                            hintText: "Adı",
                            hintStyle: TextStyle(
                              color: Color(0xFF9b9b9b),
                              fontSize: 15,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                        TextFormField(
                          style: TextStyle(color: Color(0xFF000000)),
                          cursorColor: Color(0xFF9b9b9b),
                          keyboardType: TextInputType.text,
                          obscureText: false,
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.checkroom,
                              color: Colors.grey,
                            ),
                            hintText: "Soyadı",
                            hintStyle: TextStyle(
                              color: Color(0xFF9b9b9b),
                              fontSize: 15,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                        TextFormField(
                          style: TextStyle(color: Color(0xFF000000)),
                          cursorColor: Color(0xFF9b9b9b),
                          keyboardType: TextInputType.text,
                          obscureText: false,
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.checkroom,
                              color: Colors.grey,
                            ),
                            hintText: "Kullanıcı Adı",
                            hintStyle: TextStyle(
                              color: Color(0xFF9b9b9b),
                              fontSize: 15,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                        TextFormField(
                          style: TextStyle(color: Color(0xFF000000)),
                          cursorColor: Color(0xFF9b9b9b),
                          keyboardType: TextInputType.text,
                          obscureText: false,
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.checkroom,
                              color: Colors.grey,
                            ),
                            hintText: "E-Posta",
                            hintStyle: TextStyle(
                              color: Color(0xFF9b9b9b),
                              fontSize: 15,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                        TextFormField(
                          style: TextStyle(color: Color(0xFF000000)),
                          cursorColor: Color(0xFF9b9b9b),
                          keyboardType: TextInputType.text,
                          obscureText: true,
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.checkroom,
                              color: Colors.grey,
                            ),
                            hintText: "Şifre",
                            hintStyle: TextStyle(
                              color: Color(0xFF9b9b9b),
                              fontSize: 15,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Container(
                            width: 170,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.indigo[400],
                            ),
                            child: TextButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/anasayfa');
                              },
                              child: Padding(
                                padding: EdgeInsets.only(
                                  top: 8,
                                  bottom: 8,
                                  left: 10,
                                  right: 10,
                                ),
                                child: Text(
                                  "Hesap Oluştur",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    decoration: TextDecoration.none,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
