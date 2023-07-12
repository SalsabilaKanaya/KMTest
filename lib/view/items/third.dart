// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';

import 'package:test_intership/view/items/third.dart';

class Third extends StatelessWidget {
  const Third({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // IMAGE PROFILE PIC
        Padding(
          padding: const EdgeInsets.only(right: 10.0),
          child: CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage('assets/img/3-image-1.png'),
          ),
        ),

        // Nama dan Email
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Firstname Lastname",
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.black,
                fontFamily: 'Poppins',
              ),
            ),
            Text(
              "EMAIL@EMAIL.COM",
              style: const TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w500,
                color: Color(0xFF686777),
                fontFamily: 'Poppins',
              ),
            ),
          ],
        ),
      ],
    );
  }
}
