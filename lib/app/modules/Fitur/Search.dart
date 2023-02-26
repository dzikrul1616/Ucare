import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ucare/app/modules/Fitur/allsearch.dart';

class SearchView extends StatefulWidget {
  const SearchView({Key? key}) : super(key: key);

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.9,
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
                          decoration: InputDecoration(
                            prefixIcon: InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => AllSearch()));
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
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 170,
                  decoration: BoxDecoration(
                      color: Color(0xffF2F2F2),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 20.0,
                      ),
                      InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Night Cream'),
                              Icon(
                                Icons.arrow_forward_ios_rounded,
                                size: 15,
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15.0,
                      ),
                      Divider(
                        thickness: 1,
                      ),
                      const SizedBox(
                        height: 15.0,
                      ),
                      InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Night Cream'),
                              Icon(
                                Icons.arrow_forward_ios_rounded,
                                size: 15,
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15.0,
                      ),
                      Divider(
                        thickness: 1,
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                      InkWell(
                        onTap: () {},
                        child: Center(
                          child: Text(
                            'See All',
                            style: const TextStyle(color: Colors.grey),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: ListTile(
                    title: Text(
                      'Popular search',
                      style: const TextStyle(fontWeight: FontWeight.w500),
                    ),
                  )),
              ListTile(
                leading: Image.asset(
                  'assets/barang/barang1.png',
                  width: 100,
                  height: 120,
                ),
                title: Text(
                  'White Gingseng Purify Mask',
                  style: const TextStyle(fontWeight: FontWeight.w500),
                ),
                subtitle: Text(
                  '1000 searches',
                  style: const TextStyle(color: Colors.grey),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              ListTile(
                leading: Image.asset(
                  'assets/barang/barang1.png',
                  width: 100,
                  height: 120,
                ),
                title: Text(
                  'White Gingseng Purify Mask',
                  style: const TextStyle(fontWeight: FontWeight.w500),
                ),
                subtitle: Text(
                  '1000 searches',
                  style: const TextStyle(color: Colors.grey),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: ListTile(
                    title: Text(
                      'Popular category',
                      style: const TextStyle(fontWeight: FontWeight.w500),
                    ),
                  )),
              ListTile(
                leading: Image.asset(
                  'assets/barang/barang1.png',
                  width: 100,
                  height: 120,
                ),
                title: Text(
                  'Cleanerset',
                  style: const TextStyle(fontWeight: FontWeight.w500),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              ListTile(
                leading: Image.asset(
                  'assets/barang/barang1.png',
                  width: 100,
                  height: 120,
                ),
                title: Text(
                  'Toner',
                  style: const TextStyle(fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
