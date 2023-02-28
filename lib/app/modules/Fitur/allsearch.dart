import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ucare/app/modules/Fitur/filter.dart';
import 'package:ucare/app/modules/dynamic/content.dart';

class AllSearch extends StatefulWidget {
  const AllSearch({Key? key}) : super(key: key);

  @override
  State<AllSearch> createState() => _AllSearchState();
}

class _AllSearchState extends State<AllSearch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          children: [
            const SizedBox(
              height: 5.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Image.asset('assets/button.png'),
                    iconSize: 40,
                  ),
                  Expanded(
                    child: InkWell(
                      child: TextFormField(
                        initialValue: "Cleanerset",
                        decoration: InputDecoration(
                          prefixIcon: InkWell(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Icon(Icons.search)),
                          labelText: 'find your favorite product... ',
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
                          contentPadding: EdgeInsets.symmetric(vertical: 1.0),
                        ),
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => FilterView()));
                    },
                    icon: Image.asset('assets/button/filter.png'),
                    iconSize: 40,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Content(
                newsList: [],
              ),
            ),
          ],
        )),
      ),
    );
  }
}
