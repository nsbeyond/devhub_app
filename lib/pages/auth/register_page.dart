import 'dart:developer' as dev;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

Widget formRegister(BuildContext context) {
  //final node = FocusScope.of(context);
  return Column(children: [
    TextFormField(
      keyboardType: TextInputType.emailAddress,
      style: GoogleFonts.roboto(
        fontWeight: FontWeight.bold,
        fontSize: 13,
      ),
      decoration: InputDecoration(
        labelText: 'Email',
        icon: Padding(
          padding: EdgeInsets.only(top: 15.0),
          child: Icon(Icons.email),
        ),
      ),
      onEditingComplete: () => (value) {
        dev.log(value.toString());
        return null;
      },
    ),
    SizedBox(height: 5),
    TextFormField(
      obscureText: true,
      decoration: const InputDecoration(
        labelText: 'Password',
        icon: Padding(
          padding: EdgeInsets.only(top: 15.0),
          child: Icon(Icons.lock),
        ),
      ),
      onEditingComplete: () => (value) {
        dev.log(value.toString());
        return null;
      },
    ),
    SizedBox(height: 5),
    Text(
      'Please enter Validate data',
      style: GoogleFonts.prompt(
          textStyle: TextStyle(color: Colors.red, fontWeight: FontWeight.bold)),
    ),
  ]);
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Container(
        margin: EdgeInsets.only(top: 10, left: 20, right: 20),
        child: formRegister(context),
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: Text('Register New Member'),
      actions: [],
      leading: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Icon(
          Icons.arrow_back,
        ),
      ),
    );
  }
}
