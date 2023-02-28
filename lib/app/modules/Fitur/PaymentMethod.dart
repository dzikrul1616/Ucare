import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ucare/app/modules/Fitur/Reviwers.dart';

class PaymentMethod extends StatefulWidget {
  const PaymentMethod({Key? key}) : super(key: key);

  @override
  State<PaymentMethod> createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {
  String? _selectedPayment;
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
                    'Payment',
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
                    "Payment Available",
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
                    'assets/paypal.png',
                    width: 40,
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    'Paypal',
                    style: const TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              controlAffinity: ListTileControlAffinity.trailing,
              value: 'Paypal',
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
                    'assets/button/googlepay.png',
                    width: 40,
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    'Googlepay',
                    style: const TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              controlAffinity: ListTileControlAffinity.trailing,
              value: 'Googlepay',
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
                    'assets/button/dana.png',
                    width: 40,
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    'Danapay',
                    style: const TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              value: 'Danapay',
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
                    'assets/button/gopay.png',
                    width: 40,
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    'Gopay',
                    style: const TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              value: 'Gopay',
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
