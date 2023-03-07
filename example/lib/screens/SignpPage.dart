import 'package:flutter/material.dart';
import 'package:ar_flutter_plugin_example/screens/LoginPage.dart';
import 'package:ar_flutter_plugin_example/screens/SignpPage.dart';

void main() => runApp(const SignupPage());

class SignupPage extends StatelessWidget {
  const SignupPage({Key? key}) : super(key: key);

  static const String _title = 'AR FITTING';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body:  MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'AR WORLD',
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.w500,
                      fontSize: 30),
                )),
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Sign up',
                  style: TextStyle(fontSize: 20),
                )),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'User Name',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                obscureText: true,
                controller: passwordController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                //forgot password screen
              },
              child: const Text('Having trooble in sining up?',),
            ),

            Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  child: const Text('sign up'),
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => Loginpage()));
                    print(nameController.text);
                    print(passwordController.text);
                  },
                )
            ),

          ],
        ));
  }
}

class MainPage1 extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold();
    MaterialApp(
      debugShowCheckedModeBanner: false,
      //title: 'AR APP',
      //theme: ThemeData(

      //primarySwatch: Colors.blue,
      // ),
      //home: MainPage(),
    );
  }
}