import 'package:flutter/material.dart';
import 'components.dart';

class Task1F1 extends StatelessWidget {
  const Task1F1({super.key});

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
              "\t\tAppointments",
              style: TextStyle(fontSize: 25, color: Colors.white),
            )
          ],
        ),
      ),
      body: const Center(
        child: Column(
          children: [
            SizedBox(
              height: 25,
            ),
            Text(
              'Wednesday, 22 May 2019',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            SizedBox(
              height: 50,
            ),
            Expanded(
              child: Column(
                children: [
                  MyTile(
                    title: "Lulian Ruja",
                    time: "10:50",
                  ),
                  MyTile(
                    title: "Victoria Olari",
                    time: "13:00",
                  ),
                  MyTile(
                    title: "Diana Stefan",
                    time: "15:20",
                  ),
                  MyTile(
                    title: "Gheorge Popa",
                    time: "16:10",
                    isdone: false,
                  ),
                  MyTile(
                    title: "Alexandru Sandu",
                    time: "16:40",
                    isdone: false,
                    hasIcon: true,
                  ),
                  MyTile(
                    title: "Dumitru Simona",
                    time: "08:00",
                    isdone: true,
                    hasIcon: true,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
