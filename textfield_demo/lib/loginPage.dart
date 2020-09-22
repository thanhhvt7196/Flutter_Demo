import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:textfield_demo/textField.dart';
import 'package:textfield_demo/user.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  State<StatefulWidget> createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  TextEditingController usernameController = new TextEditingController();
  TextEditingController passwordTextController = new TextEditingController();
  TextEditingController confirmPasswordTextController = new TextEditingController();
  _validateInput() {
    setState(() {

    });
  }
  _login() {
    print("Login");
  }
  @override
  Widget build(BuildContext context) {
    final MyTextField usernameTf = new MyTextField(controller: usernameController, placeHolder: "username");
    final MyTextField passwordTf = new MyTextField(controller: passwordTextController, placeHolder: "password", secureEntry: true, onChanged: _validateInput,);
    final MyTextField confirmPasswordTf = new MyTextField(controller: confirmPasswordTextController, placeHolder: "confirm password", secureEntry: true, onChanged: _validateInput,);
    
    bool validPassword = (passwordTextController.text == confirmPasswordTextController.text)
        && passwordTextController.text.isNotEmpty
        && confirmPasswordTextController.text.isNotEmpty;
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              decoration: new BoxDecoration(
                  color: Color.fromARGB(255, 240, 240, 240),
                  border: new Border.all(width: 1, color: Colors.grey),
                  borderRadius: new BorderRadius.all(Radius.circular(6))
              ),
              child: usernameTf,
            ),
            new Container(
              margin: EdgeInsets.only(left: 10, right: 10, top: 10),
              decoration: new BoxDecoration(
                  color: Color.fromARGB(255, 240, 240, 240),
                  borderRadius: new BorderRadius.all(Radius.circular(6)),
                  border: new Border.all(width: 1, color: Colors.grey)
              ),
              child: passwordTf,
            ),
            new Container(
              margin: EdgeInsets.only(top: 10, left: 10, right: 10),
              decoration: new BoxDecoration(
                  color: Color.fromARGB(255, 240, 240, 240),
                  border: new Border.all(width: 1, color: Colors.grey),
                  borderRadius: new BorderRadius.all(Radius.circular(6))
              ),
              child: confirmPasswordTf,
            ),
            new Container(
              margin: EdgeInsets.only(left: 10, right: 10, top: 10),
              child: new Row(
                children: [
                  new Expanded(
                      child: new RaisedButton(
                          color: Colors.blue,
                          textColor: Colors.white,
                          child: new Text("Login"),
                          disabledColor: Colors.grey,
                          disabledTextColor: Colors.white,
                          onPressed: validPassword ? () => _login() : null
                      )
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}