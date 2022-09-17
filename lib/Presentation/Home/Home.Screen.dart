import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:morpher_main/Infrastructure/Helper/screen_size_helper.dart';
import 'package:morpher_main/Presentation/Home/Controllers/Home.Controller.dart';
import 'package:morpher_main/Presentation/SharedWidgets/Widgets.Shared.dart';

import 'Widgets/Home.Widgets.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int dayOfWeek = DateTime.now().weekday;

    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0XFF2D2C3A),
        appBar: CustomAppBar.asPreferredSize,
        body: Column(
          children: [
            buildDaysList(dayOfWeek),
            buildBottomButtonBar(),
          ],
        ),
      ),
    );
  }

  Widget buildBottomButtonBar() {
    return Align(alignment: Alignment.bottomCenter,
      child: Material(
        color: const Color(0XFF2D2C3A),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: rTDH(7.0)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.fitness_center,
                      size: rTDH(40),
                      color: const Color(0xffFFBC21),
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
                  width: rTDH(40),
                  height: rTDH(3),
                )
              ],
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.public,
              size: rTDW(40),
              color: const Color(0xffFFBC21),
            ),
          )
        ]),
      ),
    );
  }

  Expanded buildDaysList(int dayOfWeek) {
    return Expanded(
        flex: 8,
        child: Obx(
          () => ListView.separated(
            padding: EdgeInsets.symmetric(vertical: rTDH(40)),
            itemCount: controller.workoutDays.length,
            itemBuilder: (context, index) => WorkoutDayListItem(
              workoutDay: controller.workoutDays[index],
              isToday: (index + 1) == dayOfWeek,
            ),
            separatorBuilder: (BuildContext context, int index) {
              return SizedBox(
                height: rTDH(35),
              );
            },
          ),
        ));
  }
}
