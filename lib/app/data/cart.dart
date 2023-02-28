import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ucare/app/modules/Barview/cart.dart';
import 'package:ucare/app/modules/Fitur/checkout.dart';
import 'package:ucare/app/modules/constant/lovebutton.dart';
import 'package:ucare/app/modules/constant/rating.dart';

class ContentData extends StatefulWidget {
  const ContentData({Key? key}) : super(key: key);

  @override
  State<ContentData> createState() => _ContentDataState();
}

class _ContentDataState extends State<ContentData> {
  bool _showFullDescription = false;

  String _truncateDescription(String description, int maxLength) {
    if (description.length <= maxLength) {
      return description;
    } else {
      return description.substring(0, maxLength) + '...';
    }
  }

  void _toggleDescription() {
    setState(() {
      _showFullDescription = !_showFullDescription;
    });
  }

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
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CartView()));
              },
              child: Text(
                'Add to Cart',
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
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
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              automaticallyImplyLeading: false,
              title: Row(
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
                    title: Text(
                      'Cleaners',
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                  )),
                  Stack(
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CartView()));
                        },
                        icon: Image.asset('assets/button/shopping.png'),
                        iconSize: 40,
                      ),
                      Positioned(
                          top: 30,
                          left: 9,
                          child: Container(
                            height: 15,
                            width: 15,
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(20)),
                            child: Center(
                              child: Text(
                                "2",
                                style: TextStyle(
                                    fontSize: 10.0,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ))
                    ],
                  ),
                ],
              ),
              bottom: PreferredSize(
                  child: Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.only(top: 5, bottom: 10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30))),
                  ),
                  preferredSize: Size.fromHeight(30)),
              pinned: true,
              backgroundColor: Colors.white,
              expandedHeight: 300,
              flexibleSpace: FlexibleSpaceBar(
                background: Stack(children: [
                  Image.asset(
                    'assets/bg.png',
                    width: double.maxFinite,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                      top: 290,
                      left: 160,
                      right: 160,
                      child: Center(child: Image.asset('assets/dot.png')))
                ]),
              ),
            ),
            SliverToBoxAdapter(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Column(
                children: [
                  const SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "\$29.00",
                        style: TextStyle(
                            fontSize: 28.0, fontWeight: FontWeight.bold),
                      ),
                      LoveIcon(
                        isLiked: false,
                        onTap: () {
                          print('Love button tapped!');
                        },
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    children: [
                      Text(
                        "White Ginseng Mas",
                        style: TextStyle(
                            fontSize: 25.0, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  Row(
                    children: [
                      StarRating(
                          starCount: 5,
                          rating: 5,
                          color: Colors.orange,
                          size: 30.0,
                          onRatingChanged: (rating) {}),
                      const SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        "5.0",
                        style: TextStyle(
                            fontSize: 14.0, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  GestureDetector(
                    onTap: _toggleDescription,
                    child: Text(
                      _showFullDescription
                          ? 'Masks for facial pore care Masks that help clean clogged dirt in the pores, and control oil levels on the face. Helps clear pores clogging loreammmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm'
                          : _truncateDescription(
                              'Masks for facial pore care Masks that help clean clogged dirt in the pores, and control oil levels on the face. Helps clear pores clogging loreammmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm',
                              140,
                            ),
                      style: const TextStyle(height: 1.5, fontSize: 14),
                    ),
                  ),
                  if (!_showFullDescription)
                    const SizedBox(
                      height: 10.0,
                    ),
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          _toggleDescription;
                        },
                        child: const Text(
                          'Read More',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
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
                        "Size",
                        style: TextStyle(
                            fontSize: 16.0, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        width: 5.0,
                      ),
                      Container(
                        width: 70,
                        height: 30,
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
                            "100 ml",
                            style: TextStyle(
                              fontSize: 14.0,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 70,
                        height: 30,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 244, 244, 244),
                          borderRadius: BorderRadius.circular(5.0),
                          border: Border.all(
                            width: 2.0,
                            color: Colors.grey[400]!,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "150 ml",
                            style: TextStyle(
                              fontSize: 14.0,
                              color: Colors.grey[400]!,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 70,
                        height: 30,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 244, 244, 244),
                          borderRadius: BorderRadius.circular(5.0),
                          border: Border.all(
                            width: 2.0,
                            color: Colors.grey[400]!,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "200 ml",
                            style: TextStyle(
                              fontSize: 14.0,
                              color: Colors.grey[400]!,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 120,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 0,
                          blurRadius: 1,
                          offset: Offset(0, 5),
                        ),
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadiusDirectional.circular(10),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                            left: 15,
                            top: 15,
                            child: CircleAvatar(
                              radius: 15,
                            )),
                        const SizedBox(
                          width: 10.0,
                        ),
                        Positioned(
                          top: 18,
                          left: 55,
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
                                "the product is very good, fits on my skin \nand also the delivery is very fast, the...",
                                style: TextStyle(
                                    fontSize: 14.0,
                                    height: 1.5,
                                    color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          right: 20,
                          top: 18,
                          child: Text(
                            "SEE ALL",
                            style: TextStyle(
                                fontSize: 14.0,
                                color: Colors.grey[800],
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                ],
              ),
            ))
          ],
        ));
  }
}
