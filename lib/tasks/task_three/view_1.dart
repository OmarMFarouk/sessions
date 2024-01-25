import 'package:flutter/material.dart';

class Task3 extends StatelessWidget {
  const Task3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Container(
        margin: const EdgeInsets.all(7),
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(35)),
        child: Column(
          children: [
            Container(
              alignment: Alignment.topCenter,
              margin: const EdgeInsets.all(3),
              padding: const EdgeInsets.all(15),
              height: MediaQuery.of(context).size.height * 0.5,
              decoration: BoxDecoration(
                image: const DecorationImage(
                    image: AssetImage(
                      "images/pink_alarm.jpg",
                    ),
                    fit: BoxFit.fill),
                borderRadius: BorderRadius.circular(35),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                  Icon(
                    Icons.favorite,
                    color: Colors.white,
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 5, horizontal: 2),
                  color: Colors.grey.shade400,
                  height: 3,
                  width: 10,
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 5, horizontal: 2),
                  color: Colors.red,
                  height: 3,
                  width: 15,
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 5, horizontal: 2),
                  color: Colors.grey.shade400,
                  height: 3,
                  width: 10,
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "C2 Analog Clock",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      Text(
                        r"$542",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.red.shade200),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.amber,
                        size: 15,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.amber,
                        size: 15,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.amber,
                        size: 15,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.amber,
                        size: 15,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.grey.shade300,
                        size: 15,
                      ),
                      Text(
                        " 4/5 (12)",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.grey.shade300),
                      ),
                    ],
                  ),
                  Text(
                    "\nA classically designed analog clock that would add to the decor of your house. Analog clock has hour, minutes and seconds hands.\n",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: Colors.grey.shade400),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Type",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.grey.shade400),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 5),
                            alignment: Alignment.center,
                            width: 50,
                            height: 25,
                            color: Colors.red.shade50,
                            child: Text(
                              "Analog",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 11,
                                  color: Colors.red.shade200),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Material",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.grey.shade400),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 5),
                            alignment: Alignment.center,
                            width: 50,
                            height: 25,
                            color: Colors.red.shade50,
                            child: Text(
                              "Plastic",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 11,
                                  color: Colors.red.shade200),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Text(
                      "Add to cart",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                    width: double.infinity,
                    height: 60,
                    decoration: BoxDecoration(
                        color: Color(0xFF0F1221),
                        borderRadius: BorderRadius.circular(20)),
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
