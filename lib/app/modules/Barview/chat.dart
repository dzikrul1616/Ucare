import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ucare/app/modules/Fitur/changeprofil.dart';
import 'package:ucare/app/modules/Fitur/chat.dart';
import 'package:ucare/app/modules/auth/views/auth_view.dart';

class ChatView extends StatefulWidget {
  const ChatView({Key? key}) : super(key: key);

  @override
  State<ChatView> createState() => _CartViewState();
}

class _CartViewState extends State<ChatView> {
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Image.asset('assets/button.png'),
                        iconSize: 40,
                      ),
                      Expanded(
                          child: ListTile(
                        title: Text(
                          'Chat',
                          style: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                      )),
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Image.asset('assets/button/search.png'),
                        iconSize: 40,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                ListTile(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ChatRoom()));
                  },
                  leading: CircleAvatar(
                    radius: 25,
                    child: Image.asset('assets/barang/barang1.png'),
                  ),
                  title: Text("Kaleeb Store"),
                  subtitle: Text('ok, please orderit brother'),
                  trailing: Text(
                    '2021-030-10',
                    style: const TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                ),
                Divider(
                  thickness: 1,
                ),
                ListTile(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ChatRoom()));
                  },
                  leading: CircleAvatar(
                    radius: 25,
                    child: Image.asset('assets/barang/barang1.png'),
                  ),
                  title: Text("Kaleeb Store"),
                  subtitle: Text('ok, please orderit brother'),
                  trailing: Text(
                    '2021-030-10',
                    style: const TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                ),
                Divider(
                  thickness: 1,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
