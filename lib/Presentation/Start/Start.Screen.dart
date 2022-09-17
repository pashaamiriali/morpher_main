import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:morpher_main/Infrastructure/Helper/screen_size_helper.dart';
import 'package:morpher_main/Infrastructure/Navigation/routes.dart';
import 'package:morpher_main/Presentation/Start/Controllers/Start.Controller.dart';
import 'package:morpher_main/Presentation/SharedWidgets/Widgets.Shared.dart';
import 'package:morpher_main/Core/dto/models/WorkoutDay/workout_day.dart';

part './Start.Widgets.dart';

class StartScreen extends GetView<StartController> {
  const StartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var workoutDay = controller.workoutDay.value;

    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0XFF2D2C3A),
        appBar: CustomAppBar.asPreferredSize,
        body: Stack(
          children: [
        Column(
          children: [
            buildMovesList(workoutDay),
          ],
        ),
        _buildBackButton(),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: EdgeInsets.only(bottom: rTDH(40)),
            child: _buildPrimaryButton(),
          ),
        ),
        controller.isPaused.value ? _buildResumeButton() : Container(),
          ],
        ),
      ),
    );
  }

  Positioned _buildResumeButton() {
    return Positioned(
      top: rTDH(130),
      left: rTDW(50),
      child: Align(
        alignment: Alignment.topLeft,
        child: SizedBox(
          height: rTDH(50),
          child: MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTap: () {
                //TODO make the exercise page know that it has been resumed
                Get.toNamed(Routes.MORPHER_EXERCISE);
              },
              child: AspectRatio(
                aspectRatio: 1,
                child: LayoutBuilder(builder: (context, constraints) {
                  return Material(
                    elevation: 5,
                    shape: BeveledRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(constraints.maxWidth * 0.3)),
                    color: const Color(0xFFFFBC21),
                    child: Center(
                      child: Icon(
                        Icons.play_arrow,
                        size: rTDW(30),
                        color: const Color(0xFF4C4B61),
                      ),
                    ),
                  );
                }),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Expanded buildMovesList(WorkoutDay workoutDay) {
    String lastRecord = workoutDay.lastFinishedRecord.toString();

    List<Widget> items = [];
    items.add(SizedBox(
      height: rTDH(100),
    ));
    items.add(buildDayOfWeek(workoutDay));
    items.add(SizedBox(
      height: rTDH(10),
    ));
    items.add(buildDayTitle(workoutDay));
    items.add(buildWorkoutDay(workoutDay, lastRecord));
    items.add(SizedBox(
      height: rTDH(30),
    ));

    items.addAll(List.generate(
        workoutDay.moves.length,
        (index) =>
            WorkoutMovesPeekListItem(workoutMove: workoutDay.moves[index])));
    items.add(SizedBox(
      height: rTDH(70),
    ));
    return Expanded(
        flex: 1,
        child: ListView.builder(
          padding:
              EdgeInsets.symmetric(horizontal: rTDW(60), vertical: rTDH(80)),
          itemCount: items.length,
          itemBuilder: (context, index) =>
              items[index], //workoutDay.moves[index]),
        ));
  }

  RegularText buildWorkoutDay(WorkoutDay workoutDay, String lastRecord) {
    return RegularText(
      text: workoutDay.isRestDay
          ? "..."
          : "${workoutDay.moves.length} moves ${lastRecord.substring(0, 7)}",
      textAlign: TextAlign.center,
      fontSize: rTDW(18),
    );
  }

  RegularText buildDayTitle(WorkoutDay workoutDay) {
    return RegularText(
      text: workoutDay.dayTitle,
      textAlign: TextAlign.center,
    );
  }

  SemiBoldText buildDayOfWeek(WorkoutDay workoutDay) {
    return SemiBoldText(
      text: workoutDay.dayOfWeek,
      textAlign: TextAlign.center,
      fontSize: rTDW(30),
    );
  }

  Widget _buildBackButton() {
    return SecondaryBottomButton(
        onPressed: () {
          Get.toNamed(Routes.MORPHER_HOME);
        },
        text: "Back");
  }

  Widget _buildPrimaryButton() {
    return PrimaryButton(
        onPressed: () {
          Get.toNamed(Routes.MORPHER_EXERCISE);
        },
        text: "START");
  }
}
