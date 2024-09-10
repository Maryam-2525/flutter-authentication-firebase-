import 'package:flutter/material.dart';
import 'package:flutter_firebase_auth/screens/authentication.dart';

// ignore: camel_case_types
class logIN extends StatefulWidget {
  const logIN({super.key});

  @override
  State<logIN> createState() => _logINState();
}

class _logINState extends State<logIN> {
  final _Auth = AuthenticationServices();

  final _email = TextEditingController();
  final _password = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _email.dispose();
    _password.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
            child: Column(
          children: [
            const Text(
              'login',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            const SizedBox(
              height: 15,
            ),
            TextField(
              controller: _email,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  //
                  label: Text('email')),
            ),
            const SizedBox(
              height: 15,
            ),
            TextField(
              controller: _password,
              keyboardType: TextInputType.visiblePassword,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  // prefix: Icon(Icons.hide_source_rounded),
                  label: Text('password')),
            ),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
                style: const ButtonStyle(
                  backgroundColor:
                      WidgetStatePropertyAll<Color>(Colors.blueAccent),
                ),
                onPressed: _logIN,
                child: const Text(
                  'login',
                  style: TextStyle(color: Colors.white),
                )),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Dont have an account ? '),
                SizedBox(
                  width: 1,
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'Sing Up',
                      style: TextStyle(color: Colors.blueAccent),
                    ))
              ],
            )
          ],
        )),
      ),
    );
  }

  _logIN() async {
    await _Auth.loginUserWithEmailAndPassword(_email.text, _password.text);
  }
}
