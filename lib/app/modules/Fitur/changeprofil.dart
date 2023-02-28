import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ChangeProfil extends StatefulWidget {
  const ChangeProfil({Key? key}) : super(key: key);

  @override
  State<ChangeProfil> createState() => _ChangeProfilState();
}

class _ChangeProfilState extends State<ChangeProfil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 50,
          child: ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              'Save',
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            style: ElevatedButton.styleFrom(
              primary: Color(0xff333333),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
            ),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Image.asset('assets/button.png'),
                        iconSize: 40,
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        'Change Profile',
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 33),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        child: Image.asset('assets/barang/barang1.png'),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Text(
                          'Change photo',
                          style: const TextStyle(
                              fontSize: 16,
                              color: Colors.red,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Divider(
                  thickness: 1,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Name',
                        style: const TextStyle(color: Colors.grey),
                      ),
                      Expanded(
                        child: TextFormField(
                          initialValue: "Maleek kaleeb",
                          textAlign: TextAlign.right,
                          decoration: InputDecoration(
                            hintText: 'input username',
                            labelStyle: TextStyle(
                              color: Color(0xffBDBDBD),
                            ),
                            filled: true,
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide: const BorderSide(
                                    width: 0, style: BorderStyle.none)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(
                  thickness: 1,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Gender',
                        style: const TextStyle(color: Colors.grey),
                      ),
                      Expanded(
                        child: TextFormField(
                          initialValue: "Male",
                          textAlign: TextAlign.right,
                          decoration: InputDecoration(
                            hintText: 'Input gender',
                            labelStyle: TextStyle(
                              color: Color(0xffBDBDBD),
                            ),
                            filled: true,
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide: const BorderSide(
                                    width: 0, style: BorderStyle.none)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(
                  thickness: 1,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Date of birth',
                        style: const TextStyle(color: Colors.grey),
                      ),
                      Expanded(
                        child: TextFormField(
                          initialValue: "10/10/2010",
                          textAlign: TextAlign.right,
                          decoration: InputDecoration(
                            hintText: 'Input date of birth',
                            labelStyle: TextStyle(
                              color: Color(0xffBDBDBD),
                            ),
                            filled: true,
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide: const BorderSide(
                                    width: 0, style: BorderStyle.none)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(
                  thickness: 1,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Phone number',
                        style: const TextStyle(color: Colors.grey),
                      ),
                      Expanded(
                        child: TextFormField(
                          initialValue: "+628-123-345-678",
                          textAlign: TextAlign.right,
                          decoration: InputDecoration(
                            hintText: 'Input phone number',
                            labelStyle: TextStyle(
                              color: Color(0xffBDBDBD),
                            ),
                            filled: true,
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide: const BorderSide(
                                    width: 0, style: BorderStyle.none)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(
                  thickness: 1,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Email',
                        style: const TextStyle(color: Colors.grey),
                      ),
                      Expanded(
                        child: TextFormField(
                          initialValue: "maleek@kaleeb",
                          textAlign: TextAlign.right,
                          decoration: InputDecoration(
                            hintText: 'Input email',
                            labelStyle: TextStyle(
                              color: Color(0xffBDBDBD),
                            ),
                            filled: true,
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide: const BorderSide(
                                    width: 0, style: BorderStyle.none)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(
                  thickness: 1,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
