import 'package:flutter/material.dart';
import 'register.dart';

class UserLogin extends StatefulWidget {
  UserLogin({Key? key, this.title='Login'}) : super(key: key);

  String title = 'Login';

  @override
  State<UserLogin> createState() => _UserLoginState();
}

class _UserLoginState extends State<UserLogin> {
  TextEditingController _userController = new TextEditingController();  // text from the TextField
  TextEditingController _passwordController = new TextEditingController();

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Padding(
                padding: EdgeInsets.all(10),
                child: TextField(
                  controller: _userController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Email, Username, Telephone',
                      hintText: ''),
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: EdgeInsets.all(10),
                child: TextField(
                  controller: _passwordController, // here is saved
                  obscureText: true,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                      hintText: ''),
                ),
              ),
            ),
            
            Padding(
              padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
              child: ElevatedButton(
                onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => NewPage(user: _userController.text))); // How To Navigate throught pages
                },
                child: Padding(
                  padding: EdgeInsets.fromLTRB(30, 15, 30, 15),
                  child: Text('Login',
                      style: TextStyle(color: Colors.black, fontSize: 26)),
                ),
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.orange),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(500.0),
                      side: BorderSide(color: Colors.orange),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
              child: ElevatedButton(
                onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => UserRegister())); // How To Navigate throught pages
                },
                child: Padding(
                    padding: EdgeInsets.fromLTRB(30, 15, 30, 15),
                    child: Text('Register Now',
                        style: TextStyle(color: Colors.orange, fontSize: 26))),
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(500.0),
                      side: BorderSide(color: Colors.orange),
                    ),
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


class NewPage extends StatelessWidget {
  NewPage({Key? key, required this.user}) : super(key: key);

  String user = '';

  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(title: Text('hello'),),
    body: Text('Hello ${user}'),
  );
  }
}