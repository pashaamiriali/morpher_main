import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
    String lastRecord = workoutDay.lastFinishedRecord.toString();

    return Scaffold(
      backgroundColor: const Color(0XFF2D2C3A),
      body: SafeArea(
          child: Stack(
        children: [
          Column(
            children: [
              const SizedBox(
                height: 130,
              ),
              buildDayOfWeek(workoutDay),
              const SizedBox(
                height: 10,
              ),
              buildDayTitle(workoutDay),
              buildWorkoutDay(workoutDay, lastRecord),
              buildMovesList(workoutDay),
              const SizedBox(
                height: 70,
              )
            ],
          ),
          const CustomAppBar(),
          _buildBackButton(),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 40),
              child: _buildPrimaryButton(),
            ),
          ),
         controller.isPaused.value? _buildResumeButton():Container(),
        ],
      )),
    );
  }

  Positioned _buildResumeButton() {
    return Positioned(top: 130, left: 50,
          child: Align(alignment: Alignment.topLeft,
            child: SizedBox(
              height: 50,
              child: MouseRegion(cursor: SystemMouseCursors.click,
                child: GestureDetector(onTap: (){
                  //TODO make the exercise page know that it has been resumed
                  Get.toNamed(Routes.MORPHER_EXERCISE);
                },
                  child: AspectRatio(
                  aspectRatio: 1,
                  child: LayoutBuilder(builder: (context, constraints) {
                    return Material(elevation: 5,
                      shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            constraints.maxWidth * 0.3)),
                      color: const Color(0xFFFFBC21),
                      child: const Center(
                        child: Icon(Icons.play_arrow,size: 30,color: Color(0xFF4C4B61),),
                      ),
                    );
                  }),
          ),
                ),
              ),
            ),),
        );
  }

  Expanded buildMovesList(WorkoutDay workoutDay) {
    return Expanded(
                flex: 1,
                child: ListView.builder(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 60, vertical: 80),
                  itemCount: workoutDay.moves.length,
                  itemBuilder: (context, index) => WorkoutMovesPeekListItem(
                      workoutMove: workoutDay
                          .moves[index]), //workoutDay.moves[index]),
                ));
  }

  RegularText buildWorkoutDay(WorkoutDay workoutDay, String lastRecord) {
    return RegularText(
              text: workoutDay.isRestDay
                  ? "..."
                  : "${workoutDay.moves.length} moves ${lastRecord.substring(0, 7)}",
              textAlign: TextAlign.center,
              fontSize: 18,
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
              fontSize: 30,
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
