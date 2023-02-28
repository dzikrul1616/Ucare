import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ucare/app/data/cart.dart';

import 'package:ucare/app/modules/Fitur/Payment.dart';
import 'package:ucare/app/modules/Fitur/PaymentMethod.dart';
import 'package:ucare/app/modules/Fitur/changeprofil.dart';
import 'package:ucare/app/modules/Fitur/courir.dart';
import 'package:ucare/app/modules/Fitur/order.dart';
import 'package:ucare/app/modules/auth/views/auth_view.dart';
import 'package:ucare/app/modules/dynamic/content.dart';
import 'package:ucare/app/modules/login%20and%20register/views/login_view.dart';

class ProfilView extends StatefulWidget {
  const ProfilView({Key? key}) : super(key: key);

  @override
  State<ProfilView> createState() => _CartViewState();
}

class _CartViewState extends State<ProfilView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                        'Profile',
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
                    children: [
                      CircleAvatar(
                        child: Image.asset('assets/barang/barang1.png'),
                        radius: 30,
                      ),
                      const SizedBox(
                        width: 15.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Maalek SHobab',
                            style: const TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(
                            height: 3.0,
                          ),
                          Text(
                            'Silver member',
                            style: const TextStyle(
                                color: Colors.grey, fontSize: 18),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 35.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => OrderView()));
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 60,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset('assets/order.png'),
                              const SizedBox(
                                width: 15.0,
                              ),
                              Text(
                                'My orders',
                                style: const TextStyle(
                                    fontSize: 18,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                          Icon(Icons.arrow_right)
                        ],
                      ),
                    ),
                  ),
                ),
                Divider(
                  thickness: 1,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 60,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset('assets/barang/addres.png'),
                              const SizedBox(
                                width: 15.0,
                              ),
                              Text(
                                'Shipping addresses',
                                style: const TextStyle(
                                    fontSize: 18,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                          Icon(Icons.arrow_right)
                        ],
                      ),
                    ),
                  ),
                ),
                Divider(
                  thickness: 1,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PaymentMethod()));
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 60,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset('assets/pay.png'),
                              const SizedBox(
                                width: 15.0,
                              ),
                              Text(
                                'Payment methodes',
                                style: const TextStyle(
                                    fontSize: 18,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                          Icon(Icons.arrow_right)
                        ],
                      ),
                    ),
                  ),
                ),
                Divider(
                  thickness: 1,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 60,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset('assets/voucher.png'),
                              const SizedBox(
                                width: 15.0,
                              ),
                              Text(
                                'My voucher',
                                style: const TextStyle(
                                    fontSize: 18,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                          Icon(Icons.arrow_right)
                        ],
                      ),
                    ),
                  ),
                ),
                Divider(
                  thickness: 1,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ChangeProfil()));
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 60,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset('assets/barang/uil_setting.png'),
                              const SizedBox(
                                width: 15.0,
                              ),
                              Text(
                                'Setting',
                                style: const TextStyle(
                                    fontSize: 18,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                          Icon(Icons.arrow_right)
                        ],
                      ),
                    ),
                  ),
                ),
                Divider(
                  thickness: 1,
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => AuthView()));
                    },
                    child: Container(
                        width: MediaQuery.of(context).size.width,
                        child: Text(
                          'Logout',
                          style:
                              const TextStyle(color: Colors.red, fontSize: 18),
                        )),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Divider(
                  thickness: 1,
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 60,
                        child: Text(
                          'Version 0.1',
                          style:
                              const TextStyle(color: Colors.grey, fontSize: 14),
                        )),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
