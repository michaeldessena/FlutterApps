import 'package:flutter/material.dart';
import 'login.dart';

class UserRegister extends StatefulWidget {
  const UserRegister({Key? key}) : super(key: key);

  @override
  State<UserRegister> createState() => _UserRegisterState();
}

class _UserRegisterState extends State<UserRegister> {
  TextEditingController _emailController = new TextEditingController();
  TextEditingController _userController = new TextEditingController();
  TextEditingController _telephoneController = new TextEditingController();
  TextEditingController _passwordController = new TextEditingController();
  TextEditingController _password2Controller = new TextEditingController();

  bool _passwordVisible = false;
  bool _password2Visible = false;

  @override
  void initState() {
    _passwordVisible = false;
    _password2Visible = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register Now'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    controller: _emailController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Email',
                        hintText: ''),
                  ),
                ),
              ),
              Container(
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    controller: _userController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Choose your username',
                        hintText: ''),
                  ),
                ),
              ),
              Container(
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    controller: _telephoneController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Telephone number',
                        hintText: ''),
                  ),
                ),
              ),
              Container(
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    controller: _passwordController,
                    obscureText: !_passwordVisible,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                      hintText: '',
                      suffixIcon: IconButton(
                        icon: Icon(
                          // Based on passwordVisible state choose the icon
                          _passwordVisible
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: Theme.of(context).primaryColorDark,
                        ),
                        onPressed: () {
                          // Update the state i.e. toogle the state of passwordVisible variable
                          setState(() {
                            _passwordVisible = !_passwordVisible;
                          });
                        },
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    controller: _password2Controller,
                    obscureText: !_password2Visible,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Confirm your password',
                      hintText: '',
                      suffixIcon: IconButton(
                        icon: Icon(
                          // Based on passwordVisible state choose the icon
                          _password2Visible
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: Theme.of(context).primaryColorDark,
                        ),
                        onPressed: () {
                          // Update the state i.e. toogle the state of passwordVisible variable
                          setState(() {
                            _password2Visible = !_password2Visible;
                          });
                        },
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
              padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
              child: ElevatedButton(
                onPressed: () {
                //Navigator.push(context, MaterialPageRoute(builder: (context) => UserRegister())); // How To Navigate throught pages
                RegisterSaveInfoAndGoToLogin registerSaveInfoAndGoToLogin = new RegisterSaveInfoAndGoToLogin(emailToSave: _emailController.text, usernameToSave: _userController.text, telephoneToSave: _telephoneController.text, passwordToSave: _passwordController.text);
                registerSaveInfoAndGoToLogin.goToLogin(context);
                },
                child: Padding(
                    padding: EdgeInsets.fromLTRB(30, 15, 30, 15),
                    child: Text('Register',
                        style: TextStyle(color: Colors.white, fontSize: 26))),
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
            ],
          ),
        ),
      ),
    );
  }
}

class RegisterSaveInfoAndGoToLogin extends StatelessWidget{
  RegisterSaveInfoAndGoToLogin({Key? key, required this.emailToSave, required this.usernameToSave, telephoneToSave, passwordToSave}): super(key: key);

  String emailToSave = '';
  String usernameToSave = '';
  String telephoneToSave = '';
  String passwordToSave = '';

  Widget build(BuildContext context)
  {
    return Scaffold();
  }

  void goToLogin(BuildContext context){
    
    Navigator.push(context, MaterialPageRoute(builder: (context) => UserLogin()));
    
    return;
  }
}