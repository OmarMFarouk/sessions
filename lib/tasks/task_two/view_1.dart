import 'package:flutter/material.dart';

class Task2 extends StatelessWidget {
  Task2({super.key});
  final TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 29, 24, 23),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.chevron_left,
                color: Colors.white,
              ),
              Icon(
                Icons.brightness_6_outlined,
                color: Colors.white,
              )
            ]),
      ),
      body: Center(
        child: Column(children: [
          const CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage("images/giphy.gif"),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text("Lionel Messi",
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold)),
          Text(
            "messi10@GOAT.com",
            style: TextStyle(color: Colors.grey.shade500),
          ),
          const SizedBox(
            height: 10,
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 65,
            width: 210,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
                color: Colors.amber, borderRadius: BorderRadius.circular(35)),
            child: const Center(
                child: Text(
              "Upgrade to PRO",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            )),
          ),
          const SizedBox(
            height: 20,
          ),
          MyButton(
            buttonTitle: "Privacy",
            icon: Icons.person,
          ),
          MyButton(
            buttonTitle: "Purchase History",
            icon: Icons.history,
          ),
          MyButton(
            buttonTitle: "Help and Support",
            icon: Icons.help_outline_rounded,
          ),
          MyButton(
            buttonTitle: "Settings",
            icon: Icons.settings,
          ),
          MyButton(
            buttonTitle: "Invite a Friend",
            icon: Icons.person_add_alt_1_rounded,
          ),
          MyButton(
            buttonTitle: "Log Out",
            icon: Icons.logout_rounded,
            isTrue: false,
          )
        ]),
      ),
    );
  }
}

// ignore: must_be_immutable
class MyButton extends StatelessWidget {
  MyButton({
    super.key,
    required this.buttonTitle,
    required this.icon,
    this.isTrue = true,
  });
  final String buttonTitle;
  final IconData icon;
  bool? isTrue;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 7),
        height: 50,
        width: 320,
        decoration: BoxDecoration(
            color: const Color(0xff373737),
            borderRadius: BorderRadius.circular(35)),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(icon, color: Colors.white),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    buttonTitle,
                    style: const TextStyle(color: Colors.white),
                  )
                ],
              ),
              isTrue!
                  ? const Icon(
                      Icons.chevron_right,
                      color: Colors.white,
                    )
                  : const SizedBox()
            ],
          ),
        ),
      ),
    );
  }
}
