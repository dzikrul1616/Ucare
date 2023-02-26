import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ucare/app/modules/bottombar/bottombar.dart';
import 'package:ucare/app/modules/constant/buttonEmail.dart';
import 'package:ucare/app/modules/constant/email.dart';
import 'package:ucare/app/modules/login%20and%20register/views/register.dart';

import '../controllers/login_controller.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  bool _securedText = true;
  final _key = new GlobalKey<FormState>();
  showHide() {
    setState(() {
      _securedText = !_securedText;
    });
  }

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Form(
      key: _key,
      child: ListView(
        children: [
          SafeArea(
              child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.9,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Image.asset('assets/button.png'),
                          iconSize: 40,
                        )
                      ],
                    ),
                    Spacer(),
                    Image.asset('assets/logo.png'),
                    const SizedBox(
                      height: 20.0,
                    ),
                    EmailForm(emailController: emailController),
                    const SizedBox(
                      height: 15.0,
                    ),
                    Container(
                      child: TextFormField(
                        validator: (e) {
                          if (e!.isEmpty) {
                            return "Please Insert password";
                          }
                        },
                        controller: passwordController,
                        obscureText: _securedText,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          labelStyle: TextStyle(
                            color: Color(0xffBDBDBD),
                          ),
                          suffixIcon: IconButton(
                              onPressed: showHide,
                              icon: Icon(_securedText
                                  ? Icons.visibility_off
                                  : Icons.visibility)),
                          filled: true,
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                          fillColor: Color(0xffF2F2F2),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50),
                              borderSide: const BorderSide(
                                  width: 0, style: BorderStyle.none)),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          if (_key.currentState!.validate()) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => BottomBar()));
                          }
                        },
                        child: Text(
                          'Login',
                          style: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xff333333),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    Image.asset('assets/garis.png'),
                    const SizedBox(
                      height: 30.0,
                    ),
                    ButtonGoogle(),
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Dont have an account? ',
                          style: const TextStyle(
                              color: Color(0xffBDBDBD),
                              fontWeight: FontWeight.w500),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => RegisterView()));
                          },
                          child: Text(
                            'Sign Up',
                            style: const TextStyle(
                                color: Color(0xff4F4F4F),
                                fontWeight: FontWeight.w500),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                  ],
                ),
              ),
            ),
          )),
        ],
      ),
    ));
  }
}
