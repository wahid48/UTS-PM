import 'package:flutter/material.dart';
import 'package:login/homepage.dart';

void main() {
  runApp(profil());
}

class profil extends StatelessWidget {
  const profil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Profil'),
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              Container(
                height: 80,
                child: DrawerHeader(
                    child: Text(
                  'Menu Drawer',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 30),
                )),
              ),
              ListTile(
                title: const Text(
                  'Menu Utama',
                  style: TextStyle(fontSize: 20),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => homepage()));
                },
              ),
              ListTile(
                title: const Text(
                  'Profil Pengguna',
                  style: TextStyle(fontSize: 20),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => profil()));
                },
              )
            ],
          ),
        ),
        body: Container(
          child: Center(
            child: Column(
              children: [
                Padding(padding: EdgeInsets.only(top: 25)),
                SizedBox(
                    width: 250,
                    height: 250,
                    child: Image(image: AssetImage('images/profile.png'))),
                Padding(padding: EdgeInsets.only(top: 25)),
                Text(
                  'Wahid Nur Ulumudin',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
                Text(
                  '20200801418',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
