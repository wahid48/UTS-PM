import 'package:flutter/material.dart';
import 'profil.dart';

void main() {
  runApp(homepage());
}

class homepage extends StatelessWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Home Page'),
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
          child: Column(
            children: [],
          ),
        ),
      ),
    );
  }
}
