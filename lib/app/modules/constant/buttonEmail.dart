import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ucare/app/modules/bottombar/bottombar.dart';

class ButtonGoogle extends StatelessWidget {
  const ButtonGoogle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 50,
      child: OutlinedButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => BottomBar()));
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/google.png'),
            const SizedBox(
              width: 10.0,
            ),
            Text(
              'Login With Google',
              style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff828282)),
            ),
          ],
        ),
        style: OutlinedButton.styleFrom(
          primary: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          side: BorderSide(color: Color(0xffE0E0E0), width: 1),
        ),
      ),
    );
  }
}
