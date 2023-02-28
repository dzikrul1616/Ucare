import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ucare/app/modules/Fitur/PaymentMethod.dart';
import 'package:ucare/app/modules/Fitur/Shipping.dart';
import 'package:ucare/app/modules/Fitur/courirpick.dart';
import 'package:ucare/app/modules/Fitur/paymentdone.dart';
import 'package:ucare/app/modules/Fitur/voucher.dart';

class CheckOut extends StatefulWidget {
  const CheckOut({Key? key}) : super(key: key);

  @override
  State<CheckOut> createState() => _CheckOutState();
}

class _CheckOutState extends State<CheckOut> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 200,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 244, 244, 244),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30)),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Shipping fee",
                        style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey),
                      ),
                      Text(
                        "\$ 30.00",
                        style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Sub total",
                        style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey),
                      ),
                      Text(
                        "\$ 120.00",
                        style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Total",
                        style: TextStyle(
                            fontSize: 14.0, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "\$ 520.00",
                        style: TextStyle(
                            fontSize: 14.0, fontWeight: FontWeight.w500),
                      ),
                    ],
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
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => PaymentDone()));
                  },
                  child: Text(
                    'Payment',
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
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
          child: SafeArea(
              child: Padding(
        padding: const EdgeInsets.only(bottom: 10.0),
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
                    'Checkout',
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            ListTile(
              title: Text(
                "Shipping to",
                style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ShippingView()));
                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 80,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 245, 244, 244),
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: ListTile(
                      title: Text(
                        "Office",
                        style: TextStyle(
                            fontSize: 14.0, fontWeight: FontWeight.w500),
                      ),
                      subtitle: Text(
                        "South Tangerang City, Banten 15414 0822-1376-1973",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontSize: 12.0,
                        ),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        size: 16,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            ListTile(
              title: Text(
                "Payment method",
                style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => PaymentMethod()));
                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 80,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 245, 244, 244),
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: ListTile(
                      leading: Image.asset('assets/paypal.png'),
                      title: Text(
                        "Paypal",
                        style: TextStyle(
                            fontSize: 14.0, fontWeight: FontWeight.w500),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        size: 16,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            ListTile(
              title: Text(
                "Courier",
                style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CourirPick()));
                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 80,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 245, 244, 244),
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: ListTile(
                      leading: Image.asset('assets/pos.png'),
                      title: Text(
                        "Pos Indonesia",
                        style: TextStyle(
                            fontSize: 14.0, fontWeight: FontWeight.w500),
                      ),
                      subtitle: Text(
                        "REG - \$50.00 (2 working days)",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontSize: 12.0,
                        ),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        size: 16,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            ListTile(
              title: Text(
                "Shopping list",
                style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 80,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 245, 244, 244),
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: ListTile(
                    leading: Image.asset('assets/Shoppinglist.png'),
                    title: Text(
                      "White Gingseng Purify Mas",
                      style: TextStyle(
                          fontSize: 14.0, fontWeight: FontWeight.w500),
                    ),
                    subtitle: Text(
                      "\$120.00 (4x)",
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 12.0,
                      ),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      size: 16,
                    ),
                  ),
                ),
              ),
            ),
            ListTile(
              title: Text(
                "Voucher",
                style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => VoucherView()));
                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 80,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 245, 244, 244),
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: ListTile(
                      leading: Image.asset('assets/pos.png'),
                      title: Text(
                        "You Saved \$ 10",
                        style: TextStyle(
                            fontSize: 14.0, fontWeight: FontWeight.w500),
                      ),
                      subtitle: Text(
                        "Promo has been used",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontSize: 12.0,
                        ),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        size: 16,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ))),
    );
  }
}
