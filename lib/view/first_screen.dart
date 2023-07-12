// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:test_intership/view/second_screen.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: 500,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/img/background_1.png'),
              fit: BoxFit.fill,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // IMAGE
              Image.asset(
                'assets/img/ic_photo.png',
                width: 100,
                height: 100,
              ),
              // SIZE BOX FOR FORM NAME
              SizedBox(height: 50),
              Container(
                width: 310,
                height: 37,
                padding: const EdgeInsets.only(top: 7.12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                //FORM NAME
                child: TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Name',
                    hintStyle: TextStyle(
                      color: Color(0x5B686777),
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
                    border: InputBorder.none,
                    contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  ),
                ),
              ),
              //SIZED BOX FOR FORM PALINDROME
              SizedBox(height: 20),
              Container(
                width: 310,
                height: 37,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                // FORM PALINDROME
                padding: const EdgeInsets.only(top: 7.12),
                child: TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Palindrome',
                    hintStyle: TextStyle(
                      color: Color(0x5B686777),
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
                    border: InputBorder.none,
                    contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  ),
                ),
              ),
              //SIZED BOX FOR BUTTON CHECK
              SizedBox(height: 50),
              ButtonTheme(
                minWidth: 290,
                height: 37,
                child: ElevatedButton(
                  onPressed: () {
                    // Tombol CHECK ditekan
                  },
                  // BUTTON CHECK
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF2A637B),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 130, vertical: 7.5),
                  ),
                  child: Text(
                    'CHECK',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              //SIZED BOX FOR BUTTON NEXT
              SizedBox(height: 10),
              ButtonTheme(
                minWidth: 310,
                height: 47,
                child: ElevatedButton(
                  onPressed: () {
                    //Tombol NEXT ditekan
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SecondScreen(),
                      ),
                    );
                  },
                  //BUTTON NEXT
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF2A637B),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 135, vertical: 7.5),
                  ),
                  child: Text(
                    'NEXT',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
