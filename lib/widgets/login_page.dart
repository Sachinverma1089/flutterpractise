import 'package:flutter/material.dart';
import 'package:practiseapp/functions/authFunctions.dart';

class Day24Authentication extends StatefulWidget {
  const Day24Authentication({super.key});
  _Day24AuthenticationState createState() => _Day24AuthenticationState();
}

class _Day24AuthenticationState extends State<Day24Authentication> {
  final _formKey = GlobalKey<FormState>();
  bool isLogin = false;
  String email = '';
  String password = '';
  String username = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text(
          "Email/Pass Auth.",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Form(
        key: _formKey,
        child: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              !isLogin
                  ? TextFormField(
                      key: ValueKey('username'),
                      decoration: InputDecoration(
                        hintText: 'Enter Username',
                      ),
                      validator: (value) {
                        if (value.toString().length < 2) {
                          return 'Username is so small';
                        } else {
                          return null;
                        }
                      },
                      onSaved: (value) {
                        setState(() {
                          username = value!;
                        });
                      },
                    )
                  : Container(),
              TextFormField(
                key: ValueKey('email'),
                validator: (value) {
                  if (!(value.toString().contains("@"))) {
                    return 'Invalid Email';
                  } else {
                    return null;
                  }
                },
                onSaved: (value) {
                  setState(() {
                    email = value!;
                  });
                },
                decoration: InputDecoration(
                  hintText: 'Email',
                ),
              ),
              TextFormField(
                obscureText: true,
                key: ValueKey('password'),
                validator: (value) {
                  if (value.toString().length < 6) {
                    return 'Password is so small';
                  } else {
                    return null;
                  }
                },
                onSaved: (value) {
                  setState(() {
                    password = value!;
                  });
                },
                decoration: InputDecoration(
                  hintText: 'password',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                  width: double.infinity,
                  child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.deepPurple)),
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          _formKey.currentState!.save();
                          signup(email, password);
                          isLogin
                              ? signin(email, password)
                              : signup(email, password);
                        }
                      },
                      child: isLogin
                          ? Text(
                              "Login",
                              style: TextStyle(color: Colors.white),
                            )
                          : Text(
                              "SignUp",
                              style: TextStyle(color: Colors.white),
                            ))),
              SizedBox(
                height: 10,
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    isLogin = !isLogin;
                  });
                },
                child: isLogin
                    ? Text("Don't have an account? SignUp")
                    : Text("Already Signed Up? Login"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
