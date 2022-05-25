import 'package:flutter/material.dart';
import 'signup.dart';
import 'homepage.dart';

void main() {
  runApp(login());
}

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Ujian Tengah Semester')),
        ),
        body: Container(
          child: Column(
            children: [
              Container(
                child: Center(
                  child: Column(
                    children: [
                      Padding(padding: EdgeInsets.only(top: 20)),
                      Text(
                        'Selamat Datang',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25),
                      ),
                      Text('Silahkan Login',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20))
                    ],
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 20)),
              Container(
                child: Column(
                  children: [
                    SizedBox(
                      width: 250,
                      height: 250,
                      child: Image(image: AssetImage('images/key.png')),
                    )
                  ],
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 20)),
              Container(
                width: 250,
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                          icon: Icon(Icons.person),
                          hintText: 'Masukkan Username',
                          labelText: 'Username'),
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                          icon: Icon(Icons.key),
                          hintText: 'Masukkan Password',
                          labelText: 'Password'),
                      obscureText: true,
                    )
                  ],
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 25)),
              SizedBox(
                  width: 150,
                  height: 30,
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => homepage()));
                    },
                    child: Text('Masuk'),
                  )),
              Padding(padding: EdgeInsets.only(top: 25)),
              SizedBox(
                  width: 150,
                  height: 30,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return SignUp();
                      }));
                    },
                    child: Text('Daftar'),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
