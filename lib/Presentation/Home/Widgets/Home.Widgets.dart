import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:morpher_main/Core/DTO/Models/WorkoutDay/workout_day.dart';
import 'package:morpher_main/Infrastructure/Helper/screen_size_helper.dart';
import 'package:morpher_main/Infrastructure/Navigation/routes.dart';
import 'package:morpher_main/Presentation/SharedWidgets/Widgets.Shared.dart';

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
      margin: EdgeInsets.symmetric(horizontal: rTDW(20)),
      decoration: BoxDecoration(
          boxShadow: const [BoxShadow(color: Color(0xffFFBC21), blurRadius: 6)],
          borderRadius: BorderRadius.all(Radius.circular(rTDW(20)))),
      child: InkWell(
        borderRadius: BorderRadius.circular(rTDW(20)),
        splashColor: const Color(0xffFFBC21),
        onTap: () {
          Get.toNamed(Routes.MORPHER_START);
        },
        child: Material(
          shape: BeveledRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(rTDW(10)))),
          color: isToday ? const Color(0xffFFBC21) : const Color(0XFF2D2C3A),
          shadowColor: const Color(0xffFFBC21),
          child: Container(
              height: rTDH(80),
              padding: EdgeInsets.symmetric(horizontal: rTDW(20)),
              child: Row(
                children: [
                  SemiBoldText(
                    text: workoutDay.dayOfWeek,
                  ),
                  SizedBox(
                    width: rTDW(26),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RegularText(
                        text: workoutDay.dayTitle,
                        color: isToday
                            ? const Color(0xff2D2C3A)
                            : const Color(0XFFCFCFCF),
                      ),
                      RegularText(
                          text: workoutDay.isRestDay
                              ? "..."
                              : "${workoutDay.moves.length} moves ${lastRecord.substring(0, 7)}",
                          fontSize: rTDW(18),
                          color: isToday
                              ? const Color(0xff4C4B61)
                              : const Color(0XFFB1B1B1)),
                    ],
                  )
                ],
              )),
        ),
      ),
    );
  }
}
