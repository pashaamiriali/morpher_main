import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:morpher_main/DTO/Models/workout_day/workout_day.dart';
import 'package:morpher_main/Presentation/Screens/Home.Screen/Controllers/Home.Controller.dart';
import 'package:morpher_main/Presentation/SharedWidgets/SharedWidgets.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int dayOfWeek = DateTime.now().weekday;

    return Scaffold(
      backgroundColor: const Color(0XFF2D2C3A),
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                const SizedBox(
                  height: 80,
                ),
                Expanded(
                    flex: 8,
                    child: Obx(
                      () => ListView.separated(
                        padding: const EdgeInsets.symmetric(vertical: 40),
                        itemCount: controller.workoutDays.length,
                        itemBuilder: (context, index) => WorkoutDayListItem(
                          workoutDay: controller.workoutDays[index],
                          isToday: (index + 1) == dayOfWeek,
                        ),
                        separatorBuilder: (BuildContext context, int index) {
                          return const SizedBox(
                            height: 35,
                          );
                        },
                      ),
                    )),
                Container(
                  height: 70,
                  color: const Color(0XFF2D2C3A),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 7.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.fitness_center,
                                    size: 40,
                                    color: Color(0xffFFBC21),
                                  )),
                              Container(
                                decoration: const BoxDecoration(
                                    color: Color(0xffFFBC21),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Color(0xffFFBC21),
                                          blurRadius: 6,
                                          offset: Offset(0, 2))
                                    ]),
                                width: 40,
                                height: 3,
                              )
                            ],
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.public,
                            size: 40,
                            color: Color(0xffFFBC21),
                          ),
                        )
                      ]),
                ),
              ],
            ),
            const CustomAppBar(),
          ],
        ),
      ),
    );
  }
}

class WorkoutDayListItem extends StatelessWidget {
  const WorkoutDayListItem({
    Key? key,
    required this.workoutDay,
    required this.isToday,
  }) : super(key: key);
  final WorkoutDay workoutDay;
  final bool isToday;
  @override
  Widget build(BuildContext context) {
    String lastRecord = workoutDay.lastFinishedRecord.toString();
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      decoration: const BoxDecoration(
          boxShadow: [BoxShadow(color: Color(0xffFFBC21), blurRadius: 6)],
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: InkWell(
        borderRadius: BorderRadius.circular(20),
        splashColor: const Color(0xffFFBC21),
        onTap: () {
          Get.toNamed('/start');
        },
        child: Material(
          shape: const BeveledRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20))),
          color: isToday ? const Color(0xffFFBC21) : const Color(0XFF2D2C3A),
          shadowColor: const Color(0xffFFBC21),
          child: Container(
              height: 85,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Text(
                    workoutDay.dayOfWeek,
                    style: TextStyle(
                        fontFamily: "Oswald SemiBold",
                        fontSize: 30,
                        color: isToday
                            ? const Color(0xff2D2C3A)
                            : const Color(0XFFCFCFCF)),
                  ),
                  const SizedBox(
                    width: 26,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        workoutDay.dayTitle,
                        style: TextStyle(
                            fontFamily: "Oswald Regular",
                            fontSize: 26,
                            color: isToday
                                ? const Color(0xff2D2C3A)
                                : const Color(0XFFCFCFCF)),
                      ),
                      Text(
                        workoutDay.isRestDay
                            ? "..."
                            : "${workoutDay.moves.length} moves ${lastRecord.substring(0, 7)}",
                        style: TextStyle(
                            fontFamily: "Oswald Regular",
                            fontSize: 18,
                            color: isToday
                                ? const Color(0xff4C4B61)
                                : const Color(0XFFB1B1B1)),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  )
                ],
              )),
        ),
      ),
    );
  }
}
