import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ChatRoom extends StatefulWidget {
  const ChatRoom({Key? key}) : super(key: key);

  @override
  State<ChatRoom> createState() => _ChatRoomState();
}

class _ChatRoomState extends State<ChatRoom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Padding(
          padding:
              const EdgeInsets.only(top: 10.0, left: 20, right: 20, bottom: 20),
          child: Row(
            children: [
              Expanded(
                child: TextFormField(
                  initialValue: "Thankyou very much",
                  decoration: InputDecoration(
                    prefixIcon: InkWell(
                        onTap: () {}, child: Icon(Icons.insert_photo_outlined)),
                    labelText: 'Write messege...',
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
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Image.asset('assets/button.png'),
                iconSize: 40,
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: SafeArea(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Image.asset('assets/button.png'),
                          iconSize: 40,
                        ),
                        Expanded(
                          child: ListTile(
                            leading: CircleAvatar(
                              radius: 20.0,
                              child: Image.asset('assets/barang/barang1.png'),
                            ),
                            title: Text(
                              "Kaleeb Store",
                              style:
                                  const TextStyle(fontWeight: FontWeight.w600),
                            ),
                            subtitle: Text(
                              "Online",
                              style: const TextStyle(
                                  color: Colors.grey, fontSize: 13),
                            ),
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Image.asset('assets/button.png'),
                          iconSize: 40,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Container(
                          width: 310,
                          decoration: BoxDecoration(
                            color: Color(0xffF2F2F2),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(90),
                                bottomRight: Radius.circular(90),
                                bottomLeft: Radius.circular(90)),
                          ),
                          child: ListTile(
                            title: Text(
                              "helo, is skincare still available?",
                              textAlign: TextAlign.right,
                            ),
                            trailing: Text(
                              '10.00',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 14),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20.0, left: 30),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            color: Color(0xffF2F2F2),
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(90),
                                bottomRight: Radius.circular(90),
                                bottomLeft: Radius.circular(90)),
                          ),
                          child: ListTile(
                            title: Text(
                              "hello too, there are still Bro please order all the items are ready and they are still long expiring",
                              textAlign: TextAlign.left,
                            ),
                            trailing: Text(
                              '10.00',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 14),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20.0),
                        child: Container(
                          width: 310,
                          decoration: BoxDecoration(
                            color: Color(0xffF2F2F2),
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(90),
                                bottomRight: Radius.circular(90),
                                bottomLeft: Radius.circular(90)),
                          ),
                          child: ListTile(
                            title: Text(
                              "and there is also a discount too.",
                              textAlign: TextAlign.left,
                            ),
                            trailing: Text(
                              '10.00',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 14),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20.0),
                        child: Container(
                          width: 310,
                          decoration: BoxDecoration(
                            color: Color(0xffF2F2F2),
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(90),
                                bottomRight: Radius.circular(90),
                                bottomLeft: Radius.circular(90)),
                          ),
                          child: ListTile(
                            title: Text(
                              "and there is also a discount too.",
                              textAlign: TextAlign.left,
                            ),
                            trailing: Text(
                              '10.00',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 14),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20.0),
                        child: Container(
                          width: 310,
                          decoration: BoxDecoration(
                            color: Color(0xffF2F2F2),
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(90),
                                bottomRight: Radius.circular(90),
                                bottomLeft: Radius.circular(90)),
                          ),
                          child: ListTile(
                            title: Text(
                              "and there is also a discount too.",
                              textAlign: TextAlign.left,
                            ),
                            trailing: Text(
                              '10.00',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 14),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20.0),
                        child: Container(
                          width: 310,
                          decoration: BoxDecoration(
                            color: Color(0xffF2F2F2),
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(90),
                                bottomRight: Radius.circular(90),
                                bottomLeft: Radius.circular(90)),
                          ),
                          child: ListTile(
                            title: Text(
                              "and there is also a discount too.",
                              textAlign: TextAlign.left,
                            ),
                            trailing: Text(
                              '10.00',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 14),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20.0),
                        child: Container(
                          width: 310,
                          decoration: BoxDecoration(
                            color: Color(0xffF2F2F2),
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(90),
                                bottomRight: Radius.circular(90),
                                bottomLeft: Radius.circular(90)),
                          ),
                          child: ListTile(
                            title: Text(
                              "and there is also a discount too.",
                              textAlign: TextAlign.left,
                            ),
                            trailing: Text(
                              '10.00',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 14),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
