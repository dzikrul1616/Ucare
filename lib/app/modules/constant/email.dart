import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EmailForm extends StatelessWidget {
  const EmailForm({
    Key? key,
    required this.emailController,
  }) : super(key: key);

  final TextEditingController emailController;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        validator: (e) {
          if (e!.isEmpty) {
            return "Please Insert email";
          }
        },
        controller: emailController,
        decoration: InputDecoration(
          labelText: 'Email',
          labelStyle: TextStyle(
            color: Color(0xffBDBDBD),
          ),
          filled: true,
          floatingLabelBehavior: FloatingLabelBehavior.never,
          fillColor: Color(0xffF2F2F2),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
              borderSide: const BorderSide(width: 0, style: BorderStyle.none)),
        ),
      ),
    );
  }
}
