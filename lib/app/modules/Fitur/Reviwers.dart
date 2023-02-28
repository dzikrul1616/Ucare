import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ucare/app/modules/constant/rating.dart';

class RiviwersView extends StatefulWidget {
  const RiviwersView({Key? key}) : super(key: key);

  @override
  State<RiviwersView> createState() => _RiviwersViewState();
}

class _RiviwersViewState extends State<RiviwersView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      'Reviwers',
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
                      "5.0",
                      style: TextStyle(
                          fontSize: 30.0, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        StarRating(
                            starCount: 5,
                            rating: 5,
                            color: Colors.orange,
                            size: 20.0,
                            onRatingChanged: (rating) {}),
                        Text(
                          "1000 reviews",
                          style: TextStyle(fontSize: 12.0, color: Colors.grey),
                        ),
                      ],
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
              const SizedBox(
                height: 10.0,
              ),
              Container(
                height: 45,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Container(
                        height: 45,
                        width: 118,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 244, 244, 244),
                          borderRadius: BorderRadius.circular(5.0),
                          border: Border.all(
                            width: 2.0,
                            color: Colors.grey[700]!,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'All Reviewer',
                            style: const TextStyle(fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Container(
                        height: 45,
                        width: 70,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 244, 244, 244),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.star, size: 14, color: Colors.grey),
                              Text(
                                '5',
                                style: const TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Container(
                        height: 45,
                        width: 70,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 244, 244, 244),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.star, size: 14, color: Colors.grey),
                              Text(
                                '4',
                                style: const TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Container(
                        height: 45,
                        width: 70,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 244, 244, 244),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.star, size: 14, color: Colors.grey),
                              Text(
                                '3',
                                style: const TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Container(
                        height: 45,
                        width: 70,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 244, 244, 244),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.star, size: 14, color: Colors.grey),
                              Text(
                                '2',
                                style: const TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0, right: 10),
                      child: Container(
                        height: 45,
                        width: 70,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 244, 244, 244),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.star, size: 14, color: Colors.grey),
                              Text(
                                '1',
                                style: const TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 150,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 0,
                        blurRadius: 3,
                        offset: Offset(0, 2),
                      ),
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadiusDirectional.circular(10),
                  ),
                  child: Stack(
                    children: [
                      Positioned(left: 15, top: 10, child: CircleAvatar()),
                      const SizedBox(
                        width: 10.0,
                      ),
                      Positioned(
                        top: 20,
                        left: 70,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Adbor Khaleed',
                              style: const TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 16),
                            ),
                            const SizedBox(
                              height: 3.0,
                            ),
                            StarRating(
                                starCount: 5,
                                rating: 5,
                                color: Colors.orange,
                                size: 18.0,
                                onRatingChanged: (rating) {}),
                            const SizedBox(
                              height: 3.0,
                            ),
                            Text(
                              "the product is very good, fits on my skin and \nalso the delivery is very fast, the admin is also \nvery fast to reply to the chat response.",
                              style: TextStyle(fontSize: 14.0, height: 1.5),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        right: 20,
                        top: 18,
                        child: Text(
                          "2020 March, 20",
                          style: TextStyle(fontSize: 14.0, color: Colors.grey),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
