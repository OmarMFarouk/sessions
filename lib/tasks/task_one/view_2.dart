import 'package:flutter/material.dart';

import 'components.dart';

class Task1F2 extends StatelessWidget {
  const Task1F2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: const MyDrawer(),
      appBar: AppBar(
        iconTheme: const IconThemeData(size: 40, color: Colors.white),
        backgroundColor: const Color(0xff10abcb),
        title: Row(
          children: [
            Image.asset(
              "images/medii.png",
              width: 42,
            ),
            const Text(
              "\t\tMy Account",
              style: TextStyle(fontSize: 25, color: Colors.white),
            )
          ],
        ),
      ),
      body: const Center(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage(
                "images/maledoc.jpg",
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text("Peter Parker",
                style: TextStyle(fontSize: 28, color: Colors.black)),
            Text(
              "Doctor",
              style: TextStyle(fontSize: 18, color: Colors.grey),
            ),
            SizedBox(
              height: 50,
            ),
            InfoTile(icon: Icons.smartphone, title: "+201133564910"),
            InfoTile(
              icon: Icons.alternate_email_rounded,
              title: "pparker13@hotmail.com",
            ),
            InfoTile(
              icon: Icons.location_on_sharp,
              title: "9th st,Maadi 1771,Cairo ,Egypt",
            ),
            SizedBox(
              height: 100,
            ),
            MyButton(
              text1: "Back",
            )
          ],
        ),
      ),
    );
  }
}
