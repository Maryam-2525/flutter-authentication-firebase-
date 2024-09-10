import 'package:flutter/material.dart';
import 'package:flutter_firebase_auth/screens/authentication.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _auth = AuthenticationServices();

  final _name = TextEditingController();
  final _email = TextEditingController();
  final _password = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _name.dispose();
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
              'welcome! sign up to continue to your profile',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            const SizedBox(
              height: 15,
            ),
            TextField(
              controller: _name,
              keyboardType: TextInputType.name,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  //
                  label: Text('name')),
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
                onPressed: _Singnup,
                child: const Text(
                  'Sign Up',
                  style: TextStyle(color: Colors.white),
                )),
          ],
        )),
      ),
    );
  }

  _Singnup() async {
    await _auth.createUserWithEmailAndPassword(_email.text, _password.text);
    Navigator.pop(context);
  }
}
