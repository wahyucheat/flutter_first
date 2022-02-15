import 'package:flutter/material.dart';
import 'admin/index.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: LoginPage(),
  ));
}

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[300],
      body: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin : const  EdgeInsets.all(20),
              child: const Text(
                'Login Page',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(30),
              child: TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.person, color: Colors.black),
                  hintText: 'username',
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(30),
              child: TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Colors.black,
                  ),
                  hintText: 'Password',
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(20),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(150, 45),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const MainMenu()),
                  );
                },
                child: const Text(
                  'login',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
