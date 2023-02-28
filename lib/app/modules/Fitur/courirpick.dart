import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ucare/app/modules/Fitur/Reviwers.dart';

class CourirPick extends StatefulWidget {
  const CourirPick({Key? key}) : super(key: key);

  @override
  State<CourirPick> createState() => _CourirPickState();
}

class _CourirPickState extends State<CourirPick> {
  @override
  String? _selectedPayment;
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
      body: SingleChildScrollView(
        child: SafeArea(
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
                    'Courier',
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
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Courier Available",
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            RadioListTile<String>(
              activeColor: Colors.black,
              title: Row(
                children: [
                  Image.asset(
                    'assets/pos.png',
                    width: 40,
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'POS Indonesia',
                        style: const TextStyle(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(
                        height: 3.0,
                      ),
                      Text(
                        'REG - \$50.00 (2 working days)',
                        style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
              controlAffinity: ListTileControlAffinity.trailing,
              value: 'Pos Indonesia',
              groupValue: _selectedPayment,
              onChanged: (String? value) {
                setState(() {
                  _selectedPayment = value;
                });
              },
            ),
            const SizedBox(
              height: 10.0,
            ),
            RadioListTile<String>(
              activeColor: Colors.black,
              title: Row(
                children: [
                  Image.asset(
                    'assets/button/jne.png',
                    width: 40,
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'JNE Express',
                        style: const TextStyle(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(
                        height: 3.0,
                      ),
                      Text(
                        'REG - \$50.00 (3 working days)',
                        style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
              controlAffinity: ListTileControlAffinity.trailing,
              value: 'JNE',
              groupValue: _selectedPayment,
              onChanged: (String? value) {
                setState(() {
                  _selectedPayment = value;
                });
              },
            ),
            const SizedBox(
              height: 10.0,
            ),
            RadioListTile<String>(
              activeColor: Colors.black,
              title: Row(
                children: [
                  Image.asset(
                    'assets/button/jnt.png',
                    width: 40,
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'JNT Express',
                        style: const TextStyle(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(
                        height: 3.0,
                      ),
                      Text(
                        'REG - \$50.00 (5 working days)',
                        style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
              value: 'JNT',
              controlAffinity: ListTileControlAffinity.trailing,
              groupValue: _selectedPayment,
              onChanged: (String? value) {
                setState(() {
                  _selectedPayment = value;
                });
              },
            ),
            const SizedBox(
              height: 10.0,
            ),
            RadioListTile<String>(
              activeColor: Colors.black,
              title: Row(
                children: [
                  Image.asset(
                    'assets/button/sicepat.png',
                    width: 40,
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Sicepat',
                        style: const TextStyle(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(
                        height: 3.0,
                      ),
                      Text(
                        'REG - \$50.00 (7 working days)',
                        style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
              value: 'Sicepat',
              controlAffinity: ListTileControlAffinity.trailing,
              groupValue: _selectedPayment,
              onChanged: (String? value) {
                setState(() {
                  _selectedPayment = value;
                });
              },
            ),
          ],
        )),
      ),
    );
  }
}
