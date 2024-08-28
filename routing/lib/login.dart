import 'package:go_router/go_router.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter/material.dart';
import 'model.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

   final _formkey = GlobalKey<FormState>();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();

  //
  // Future<void> data(User user) async {
  //   var url = Uri.parse('https://jsonplaceholder.typicode.com/users');
  //   var response = await http.post(url,
  //       headers: {'content': 'json'},
  //       body: jsonEncode(user.toJson));
  //   if (response.statusCode == 201) {
  //     print('Response successfully created');
  //     final val = jsonDecode(response.body);
  //     print(val);
  //   } else {
  //     throw Exception('response not found');
  //   }
  // }
  //   @override
  //   void initState() {
  //     _email;
  //     _password;
  //     super.initState();
  //   }
  //
  //   @override
  //   void dispose() {
  //     _email.dispose();
  //     _password.dispose();
  //     super.dispose();
  //   }

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.menu),
          title: const Text(
            'Instagram',
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          flexibleSpace: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.pinkAccent, Colors.deepOrangeAccent])),
          ),
        ),
        body: Center(
          child: Container(
            height: 400,
            width: 400,
            // color: Colors.deepOrange,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextFormField(
                  controller: _email,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Enter the email';
                    }
                    return null;
                  },
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                      hintText: 'Enter your password',
                      prefixIcon: const Icon(Icons.account_circle),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          borderSide:
                          const BorderSide(color: Colors.black, width: 2.0)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          borderSide:
                          const BorderSide(color: Colors.black, width: 2.0))),
                ),
                TextFormField(
                  controller: _password,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Enter the text';
                    }
                    return null;
                  },
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                      hintText: 'password',
                      prefixIcon: const Icon(Icons.remove_red_eye),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          borderSide:
                          const BorderSide(color: Colors.black, width: 2.0)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          borderSide:
                          const BorderSide(color: Colors.black, width: 2.0))),
                ),
                ElevatedButton(
                    style:
                    ElevatedButton.styleFrom(backgroundColor: Colors.black),
                    onPressed: () {context.go('/homepage');
                      },

                    child: const Text(
                      'login',
                      style: TextStyle(fontSize: 15.0, color: Colors.white),
                    ))
              ],
            ),
          ),
        ),
      );
    }
  }



 
