import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ucare/app/modules/bottombar/bottombar.dart';
import 'package:ucare/app/modules/constant/buttonEmail.dart';
import 'package:ucare/app/modules/constant/email.dart';
import 'package:ucare/app/modules/login%20and%20register/views/login_view.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  bool _securedText = true;
  showHide() {
    setState(() {
      _securedText = !_securedText;
    });
  }

  final _key = new GlobalKey<FormState>();
  bool isChecked = false;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final passwordController2 = TextEditingController();
  final usernameController = TextEditingController();
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
                  height: MediaQuery.of(context).size.height * 1.1,
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
                      Container(
                        child: TextFormField(
                          validator: (e) {
                            if (e!.isEmpty) {
                              return "Please Insert username";
                            }
                          },
                          controller: usernameController,
                          decoration: InputDecoration(
                            labelText: 'Username',
                            labelStyle: TextStyle(
                              color: Color(0xffBDBDBD),
                            ),
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
                        height: 15.0,
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
                        height: 15.0,
                      ),
                      Container(
                        child: TextFormField(
                          validator: (e) {
                            if (e!.isEmpty) {
                              return "Please Insert password again";
                            }
                          },
                          controller: passwordController2,
                          obscureText: _securedText,
                          decoration: InputDecoration(
                            labelText: 'Confirm Password',
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
                        height: 15.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Checkbox(
                            value: isChecked,
                            onChanged: (value) {
                              setState(() {
                                isChecked = value!;
                              });
                            },
                            focusColor: Color(0xffBDBDBD),
                          ),
                          Expanded(
                            child: Text(
                              'I agree with the Term and Condition and the Privacy Policy',
                              textAlign: TextAlign.justify,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: Color(0xffBDBDBD),
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ],
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
                            'Sign Up',
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
                            'Already have an account? ',
                            style: const TextStyle(
                                color: Color(0xffBDBDBD),
                                fontWeight: FontWeight.w500),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LoginView()));
                            },
                            child: Text(
                              'Sign In',
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
      ),
    );
  }
}
