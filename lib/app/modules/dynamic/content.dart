import 'dart:math';

import 'package:flutter/material.dart';
import 'package:ucare/app/data/cart.dart';
import 'package:ucare/app/models/conten.dart';
import 'package:ucare/app/modules/Barview/cart.dart';
import 'package:ucare/app/modules/constant/lovebutton.dart';
import 'package:faker/faker.dart';

class Content extends StatefulWidget {
  const Content({Key? key, required List newsList}) : super(key: key);

  @override
  State<Content> createState() => _ContentState();
}

class _ContentState extends State<Content> {
  Faker faker = Faker();

  @override
  Widget build(BuildContext context) {
    List<ContentProduct> dummydata = List.generate(86, (index) {
      return ContentProduct(
          "https://picsum.photos/id/$index/200",
          faker.food.restaurant(),
          10 + Random().nextInt(100),
          faker.food.restaurant());
    });
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: GridView.builder(
        padding: EdgeInsets.zero,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 1.0,
            crossAxisCount: 2,
            mainAxisSpacing: 15,
            crossAxisSpacing: 15,
            mainAxisExtent: 290),
        itemCount: dummydata.length,
        shrinkWrap: true,
        physics: const ScrollPhysics(),
        itemBuilder: (_, index) {
          return InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ContentData()));
            },
            onLongPress: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    content: Container(
                      child: Image.network(
                        dummydata[index].image,
                        height: 300,
                        width: 120,
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              );
            },
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xffF2F2F2),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                      topLeft: Radius.circular(10),
                    ),
                    child: Image.network(
                      dummydata[index].image,
                      height: 170,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  ListTile(
                    title: Text(
                      dummydata[index].title.length > 15
                          ? '${dummydata[index].title.substring(0, 15)}...'
                          : dummydata[index].title,
                    ),
                    subtitle: Text(
                      dummydata[index].content.length > 20
                          ? '${dummydata[index].content.substring(0, 20)}...'
                          : dummydata[index].content,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("\$ ${dummydata[index].price}"),
                        LoveIcon(
                          isLiked: false,
                          onTap: () {
                            print('Love button tapped!');
                          },
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
