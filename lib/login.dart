import 'package:flutter/material.dart';

class Mylogin extends StatelessWidget {
  const Mylogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.35,
            decoration: BoxDecoration(
              color: Color(0xFF3F51B5),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "QuickTix",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Making Ticketing a Breeze!",
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Email", style: TextStyle(fontWeight: FontWeight.bold)),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Email loket",
                  ),
                ),
                SizedBox(height: 16),
                Text("Password", style: TextStyle(fontWeight: FontWeight.bold)),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Masukkan Password",
                    suffixIcon: Icon(Icons.visibility),
                  ),
                ),
                SizedBox(height: 24),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF3F51B5),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 14),
                      child:
                          Text("Login", style: TextStyle(color: Colors.white)),
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Center(
                  child: Column(
                    children: [
                      Image.asset("asset/image/logo_cwb.png", height: 40),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
