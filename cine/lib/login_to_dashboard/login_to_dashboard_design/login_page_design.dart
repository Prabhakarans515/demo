import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


import '../login_to_dashboard_dummy/login_page_dummy.dart';
import '../login_to_dashboard_model/login_page_model.dart';
import 'login_custom_text_button.dart';
import 'login_custom_textform_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formkey = GlobalKey<FormState>();
  final _emailcontroller = TextEditingController();
  final _passwordcontroller = TextEditingController();
  late Map<String, dynamic> jValue;

  void getData(LoginModel login) {
    final Map<String, dynamic> data = login.toJson();
    if (kDebugMode) {
      print(data);
    }
  }

  @override
  void initState() {
    jValue = ApiDat.value;
    super.initState();
  }

  @override
  void dispose() {
    _emailcontroller.dispose();
    _passwordcontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 30.0, top: 200.0, right: 30.0),
              child: Form(
                key: _formkey,
                child: Container(
                  height: 300,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'welcome back',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      CustomTextFormField(
                        text: 'Email',
                        colors: Colors.grey,
                        controller: _emailcontroller,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Enter the email';
                          }
                          return null;
                        },
                      ),
                      CustomTextFormField(
                        text: 'Password',
                        colors: Colors.grey,
                        controller: _passwordcontroller,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Enter the password';
                          }
                          return null;
                        },
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 180),
                        child: CustomTextButton(
                          text: 'Forgot Password',
                          colors: Colors.red,
                          colors1: Colors.red,
                          onPressed: () {},
                        ),
                      ),
                      SizedBox(
                        height: 35,
                        width: screenWidth,
                        child: ElevatedButton(
                          onPressed: () {
                            if (_formkey.currentState!.validate()) {
                              LoginModel login = LoginModel(
                                  email: _emailcontroller.text,
                                  password: _passwordcontroller.text);
                              getData(login);
                              context.go('/dashboard_design');
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            backgroundColor: Colors.red[900],
                          ),
                          child: Text(
                            'Log In',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 50.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Dont have an account ?',
                    style: TextStyle(color: Colors.blue[800], fontSize: 16),
                  ),
                  CustomTextButton(
                    text: 'Sign In',
                    colors: Colors.red,
                    colors1: Colors.red,
                    onPressed: () {
                      context.go('/sign_in_design');
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
