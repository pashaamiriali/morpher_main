import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFF2D2C3A),
      body: Column(
        children: [
          Expanded(
              flex: 1,
              child: Container(
                color: Colors.red,
              )),
          Expanded(
              flex: 8,
              child: ListView.separated(
                padding: const EdgeInsets.symmetric(vertical: 40),
                itemCount: 7,
                itemBuilder: (index, context) => Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: const BoxDecoration(boxShadow: [
                    BoxShadow(color: Color(0xffFFBC21), blurRadius: 6)
                  ], borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Material(
                    shape: const BeveledRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    color: const Color(0XFF2D2C3A),
                    shadowColor: const Color(0xffFFBC21),
                    child: Container(
                        height: 85,
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          children: [
                            const Text(
                              "SAT",
                              style: TextStyle(
                                  fontFamily: "Oswald SemiBold",
                                  fontSize: 30,
                                  color: Color(0XFFCFCFCF)),
                            ),
                            const SizedBox(
                              width: 26,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  "Chest Day",
                                  style: TextStyle(
                                      fontFamily: "Oswald Regular",
                                      fontSize: 26,
                                      color: Color(0XFFCFCFCF)),
                                ),
                                Text(
                                  "12 moves 1:45",
                                  style: TextStyle(
                                      fontFamily: "Oswald Regular",
                                      fontSize: 18,
                                      color: Color(0XFFB1B1B1)),
                                ),
                              ],
                            )
                          ],
                        )),
                  ),
                ),
                separatorBuilder: (BuildContext context, int index) {
                  return const SizedBox(
                    height: 35,
                  );
                },
              )),
          Expanded(
              flex: 1,
              child: Container(
                color: Colors.blue,
              )),
        ],
      ),
    );
  }
}
