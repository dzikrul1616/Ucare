import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HerbalClay extends StatelessWidget {
  const HerbalClay({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Herbal Clay\nPurifying Mask',
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        ),
        const SizedBox(
          height: 20.0,
        ),
        Container(
          width: 100,
          height: 35,
          child: ElevatedButton(
            onPressed: () {},
            child: Center(child: Text('Shop Now')),
            style: ElevatedButton.styleFrom(
              primary: Color(0xff333333),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
            ),
          ),
        )
      ],
    );
  }
}
