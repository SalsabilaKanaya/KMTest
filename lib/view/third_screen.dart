// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:test_intership/view/items/third.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            width: double.maxFinite,
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    // LEFT ARROW NAV
                    Padding(
                      padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        splashColor: Colors.white70,
                        child: Ink.image(
                          fit: BoxFit.fill,
                          width: 40,
                          height: 50,
                          image: AssetImage(
                            'assets/img/ic_back.png',
                          ),
                        ),
                      ),
                    ),

                    // TEXT Daftar
                    Padding(
                      padding: EdgeInsets.only(left: 85),
                      child: Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                          child: Text(
                            "Third Screen",
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                              fontFamily: 'Poppins',
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 0.4,
                  color: Colors.grey,
                ),
                Align(
                  child: Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.only(left: 31, top: 42, right: 31, bottom: 42),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 1, right: 1),
                          child: ListView.separated(
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            separatorBuilder: (context, index) {
                              return Padding(
                                padding: EdgeInsets.only(top: 18.5, bottom: 18.5),
                                child: SizedBox(
                                  width: 289,
                                  child: Divider(
                                    height: 0.5,
                                    thickness: 0.2,
                                    color: Colors.grey,
                                  ),
                                ),
                              );
                            },
                            itemCount: 8,
                            itemBuilder: (context, index) {
                              return Third();
                            },
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 18, bottom: 5),
                          child: Divider(
                            height: 0.5,
                            thickness: 0.2,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
