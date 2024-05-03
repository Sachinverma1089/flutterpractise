import 'package:flutter/material.dart';

class FormWidget extends StatelessWidget {
  String firstname = '';
  String lastname = '';
  String email = '';
  String password = '';

  final _formKey = GlobalKey<FormState>();

//----------------FUNCTIONS--------------------
  trysubmit() {
    final isvalid = _formKey.currentState!.validate();
    if (isvalid) {
      _formKey.currentState!.save();
      submitform();
    } else {
      print('Error');
    }
  }

  submitform() {
    print(firstname);
    print(lastname);
    print(email);
    print(password);
  }

  FormWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Form Widget"),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(10),
          child: Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(hintText: 'Sachin'),
                    key: ValueKey("firstname"),
                    validator: (value) {
                      if (value.toString().isEmpty) {
                        return 'First Name should not be Empty';
                      } else {
                        return null;
                      }
                    },
                    onSaved: (value) {
                      firstname = value.toString();
                    },
                  ),
                  TextFormField(
                    decoration: InputDecoration(hintText: 'Verma'),
                    key: ValueKey("lastname"),
                    validator: (value) {
                      if (value.toString().isEmpty) {
                        return 'Last Name should not be Empty';
                      } else {
                        return null;
                      }
                    },
                    onSaved: (value) {
                      lastname = value.toString();
                    },
                  ),
                  TextFormField(
                    decoration: InputDecoration(hintText: 'alpha@gmail.com'),
                    key: ValueKey("Email"),
                    validator: (value) {
                      if (value.toString().isEmpty) {
                        return 'Email should not be Empty';
                      } else {
                        return null;
                      }
                    },
                    onSaved: (value) {
                      email = value.toString();
                    },
                  ),
                  TextFormField(
                    decoration: InputDecoration(hintText: '******'),
                    key: ValueKey("password"),
                    obscureText: true,
                    validator: (value) {
                      if (value.toString().length <= 5) {
                        return 'Minium length of password should be 6';
                      } else {
                        return null;
                      }
                    },
                    onSaved: (value) {
                      password = value.toString();
                    },
                  ),
                  TextButton(
                      onPressed: () {
                        trysubmit();
                      },
                      child: Text("Submit"))
                ],
              )),
        ),
      ),
    );
  }
}
