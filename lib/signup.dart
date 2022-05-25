import 'package:flutter/material.dart';
import 'package:cool_alert/cool_alert.dart';

void main() {
  runApp(SignUp());
}

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Center(child: Text('Sign Up'))),
            body: Container(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Silahkan Mengisi Data Berikut',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                    Container(
                      width: 300,
                      child: Column(
                        children: [
                          Padding(padding: EdgeInsets.only(bottom: 25)),
                          TextFormField(
                            decoration: const InputDecoration(
                                icon: Icon(Icons.mail),
                                hintText: 'Masukkan Email',
                                labelText: 'Email'),
                          ),
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
                          ),
                          Padding(padding: EdgeInsets.only(top: 25)),
                          SizedBox(
                              width: 150,
                              height: 30,
                              child: ElevatedButton(
                                  onPressed: () {
                                    CoolAlert.show(
                                      context: context,
                                      type: CoolAlertType.success,
                                      text: "Pendaftaran Berhasil!",
                                    );
                                  },
                                  child: Text('Daftar')))
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )));
  }
}
