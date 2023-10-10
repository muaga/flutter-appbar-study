import 'package:flutter/material.dart';

class UserBar extends StatelessWidget {
  final username;
  final address;
  final double temperature;

  UserBar(this.username, this.address, this.temperature);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.only(bottom: 16.0),
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(style: BorderStyle.solid, width: 0.1))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(children: [
                  Image.asset("assets/user.png", height: 50),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("${username}",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w700)),
                      SizedBox(height: 5),
                      Text("${address}", style: TextStyle(fontSize: 13)),
                    ],
                  )
                ]),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      children: [
                        Column(
                          children: [
                            Text("${temperature}℃",
                                style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.deepPurple)),
                            SizedBox(height: 3),
                            Image.asset("assets/bar2.png", width: 50),
                          ],
                        ),
                        SizedBox(width: 3),
                        Image.asset("assets/smile.png", height: 30),
                      ],
                    ),
                    SizedBox(height: 3),
                    Text(
                      "매너온도",
                      style: TextStyle(
                          fontSize: 10,
                          color: Colors.black54,
                          decoration: TextDecoration.underline),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
