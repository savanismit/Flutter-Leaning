import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        body: Container(
          margin: EdgeInsets.only(top: 60.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('images/My_Image.jpg'),
                radius: 70,
              ),
              Text(
                "Smit Savani",
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2,
                  color: Colors.white,
                ),
              ),
              Text(
                "Flutter Developer",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 120.0,
                child: Divider(
                  color: Colors.lightBlue,
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 80,
                ),
                child: ListTile(
                  leading: Icon(Icons.phone, color: Colors.lightBlueAccent),
                  title: Text(
                    '+91 9067064044',
                    style: TextStyle(color: Colors.lightBlueAccent),
                  ),
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 80,
                ),
                child: ListTile(
                  leading: Icon(Icons.email, color: Colors.lightBlueAccent),
                  title: Text(
                    'smitsavani11@gmail.com',
                    style: TextStyle(color: Colors.lightBlueAccent),
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
