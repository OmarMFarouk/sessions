import 'package:flutter/material.dart';

import 'view_1.dart';
import 'view_2.dart';
import 'view_3.dart';

class MyButton extends StatelessWidget {
  const MyButton({
    this.isBlue = true,
    required this.text1,
    super.key,
    this.ontap,
  });
  final String text1;
  final bool isBlue;
  final Function()? ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        alignment: Alignment.center,
        height: 60,
        width: 170,
        decoration: BoxDecoration(
            color: isBlue ? const Color(0xff10abcb) : Colors.grey,
            borderRadius: BorderRadius.circular(10)),
        child: Text(
          text1,
          textAlign: TextAlign.center,
          style: const TextStyle(color: Colors.white, fontSize: 22),
        ),
      ),
    );
  }
}

class InfoTile extends StatelessWidget {
  const InfoTile({
    super.key,
    required this.icon,
    required this.title,
    this.hasColor = false,
  });
  final IconData icon;
  final String title;
  final bool hasColor;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(
            icon,
            color: Colors.grey,
          ),
          const SizedBox(
            width: 12,
          ),
          Expanded(
            child: Text(title,
                style: TextStyle(
                    overflow: TextOverflow.ellipsis,
                    fontSize: 20,
                    color: hasColor ? Colors.blue : Colors.grey)),
          )
        ],
      ),
    );
  }
}

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.grey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            MyButton(
              text1: "1st View",
              ontap: () => Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const Task1F1())),
            ),
            MyButton(
              text1: "2nd View",
              ontap: () => Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const Task1F2())),
            ),
            MyButton(
              text1: "3rd View",
              ontap: () => Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const Task1F3())),
            )
          ],
        ),
      ),
    );
  }
}

class MyTile extends StatelessWidget {
  const MyTile(
      {super.key,
      this.title,
      this.time,
      this.isdone = false,
      this.hasIcon = false});
  final String? title;
  final String? time;
  final bool isdone;
  final bool hasIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.1,
      padding: const EdgeInsets.all(17),
      width: 370,
      decoration: BoxDecoration(
          color: Colors.grey.shade100,
          border: Border(
              bottom: BorderSide(color: Colors.grey.shade300, width: 2))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title!),
              Row(
                children: [const Icon(Icons.alarm), Text(time!)],
              )
            ],
          ),
          hasIcon
              ? (isdone
                  ? const Icon(
                      Icons.done_all_rounded,
                      color: Colors.blue,
                      size: 40,
                    )
                  : const Icon(
                      Icons.close,
                      color: Colors.red,
                      size: 40,
                    ))
              : const SizedBox(
                  height: 5,
                )
        ],
      ),
    );
  }
}
