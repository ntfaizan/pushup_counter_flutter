import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffbdc3c7),
      appBar: AppBar(
        title: const Text('Login'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              counter += 1;
              setState(() {});
            },
          )
        ],
        backgroundColor: Colors.amberAccent,
      ),
      body: Center(
        child: Text(
          "Welcome $counter",
          style: const TextStyle(
            fontSize: 12.0,
            fontWeight: FontWeight.w900,
            color: Colors.purple,
          ),
        ),
      ),
    );
  }
}
