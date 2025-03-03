import 'package:flutter/material.dart';

class MySplash extends StatelessWidget {
  const MySplash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'QuickTix',
            style: TextStyle(
                color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 40),
          ),
          SizedBox(
            height: 4,
          ),
          Text(
            'Making Ticketing a Breeze!',
            style: TextStyle(color: Colors.black),
          ),
          SizedBox(
            height: 450,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              children: [
                Text(
                  'From',
                  style: TextStyle(color: Colors.black, fontSize: 7),
                ),
                Image.asset(
                  "asset/image/logo_cwb.png",
                  height: 40,
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}
