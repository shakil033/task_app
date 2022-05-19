import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_app/screen/login.dart';
import 'package:task_app/screen/signup.dart';
import 'package:task_app/widget/brand_color.dart';
import 'package:task_app/widget/button.dart';

class Onbording2 extends StatefulWidget {
  const Onbording2({Key? key}) : super(key: key);

  @override
  State<Onbording2> createState() => _Onbording2State();
}

class _Onbording2State extends State<Onbording2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Stack(
        children: [
          Positioned(
            top: -200,
            child: Transform.rotate(
              angle: pi / 6,
              child: Container(
                height: 500,
                width: 400,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Color(0xFF8E8E93)),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text("Create a Task and Assign it to Your Team Members",
                    style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFFE4E4E6))),
                SizedBox(height: 32),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SvgPicture.asset(
                      'images/slider2.svg',
                      height: 8,
                    ),
                  ],
                ),
                SizedBox(height: 36),
                ButtonRound(
                  title: "Sign Up",
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => SignUp()));
                  },
                ),
                SizedBox(height: 16),
                ButtonRound(
                  title: "Login",
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => Login()));
                  },
                  isColor: true,
                ),
                SizedBox(
                  height: 40,
                ),
                SvgPicture.asset(
                  'images/Indicator.svg',
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
