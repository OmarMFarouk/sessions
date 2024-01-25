import 'package:flutter/material.dart';

import 'components.dart';

class Task1F3 extends StatelessWidget {
  const Task1F3({super.key});

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
                "\t\tPatient Account",
                style: TextStyle(fontSize: 25, color: Colors.white),
              )
            ],
          ),
        ),
        body: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage("images/maledoc.jpg")),
                  Padding(
                    padding: const EdgeInsets.all(35.0),
                    child: Column(
                      children: [
                        const Text(
                          "Dumitru Simona",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 23),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Container(
                              height: 40,
                              width: 140,
                              alignment: Alignment.center,
                              padding: const EdgeInsets.all(10),
                              decoration:
                                  const BoxDecoration(color: Color(0xff10abcb)),
                              child: const Text(
                                "MEDICAL HISTORY",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12),
                              )),
                        )
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              const InfoTile(
                icon: Icons.alarm,
                title: "08:00 - 09:30",
              ),
              const InfoTile(
                icon: Icons.phone_android,
                title: "07534677277",
                hasColor: true,
              ),
              const InfoTile(
                icon: Icons.place,
                title: "48 Traian Street, Bulding 51,\nApartment 02, Brasov",
              ),
              const InfoTile(
                icon: Icons.text_snippet_sharp,
                title:
                    "Medical tests are preformed to \nverfiy the state of health...",
                hasColor: true,
              ),
              const SizedBox(
                height: 60,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      MyButton(
                        text1: "START\nPROCEDURES",
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      MyButton(text1: "BACK"),
                    ],
                  ),
                  Column(children: [
                    MyButton(
                      text1: "EDIT",
                      isBlue: false,
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    MyButton(text1: "PATIENT\nMISSING"),
                  ])
                ],
              )
            ],
          ),
        ));
  }
}
