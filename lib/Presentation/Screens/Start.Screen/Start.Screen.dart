import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:morpher_main/Presentation/Screens/Start.Screen/Controllers/Start.Controller.dart';
import 'package:morpher_main/Presentation/SharedWidgets/SharedWidgets.dart';
import 'package:morpher_main/dto/models/workout_day/workout_day.dart';

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
              Text(
                workoutDay.dayOfWeek,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontFamily: "Oswald SemiBold",
                    fontSize: 30,
                    color: Color(0XFFCFCFCF)),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                workoutDay.dayTitle,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontFamily: "Oswald Regular",
                    fontSize: 26,
                    color: Color(0XFFCFCFCF)),
              ),
              Text(
                workoutDay.isRestDay
                    ? "..."
                    : "${workoutDay.moves.length} moves ${lastRecord.substring(0, 7)}",
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontFamily: "Oswald Regular",
                    fontSize: 18,
                    color: Color(0XFFCFCFCF)),
              ),
              Expanded(
                  flex: 1,
                  child: ListView.builder(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 60, vertical: 80),
                    itemCount: workoutDay.moves.length,
                    itemBuilder: (context, index) => WorkoutMovesPeekListItem(
                        workoutMove: workoutDay.moves[index]),
                  )),
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
          )
        ],
      )),
    );
  }

  Align _buildBackButton() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: InkWell(
        splashColor: Colors.transparent,
        onTap: () {
          Get.toNamed('/home');
        },
        child: Container(
          color: const Color(0XFF2D2C3A),
          height: 70,
          child: const Align(
            alignment: Alignment.bottomCenter,
            child: Text(
              "Back",
              style: TextStyle(
                fontFamily: "Oswald Regular",
                fontSize: 20,
                color: Color(0XFFCFCFCF),
              ),
            ),
          ),
        ),
      ),
    );
  }

  InkWell _buildPrimaryButton() {
    return InkWell(
      borderRadius: const BorderRadius.all(
        Radius.circular(20),
      ),
      splashColor: Colors.transparent,
      onTap: () {},
      child: Container(
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
            boxShadow: [
              BoxShadow(
                color: Color(0xffFFBC21),
                blurRadius: 6,
              )
            ]),
        child: const Material(
          shape: BeveledRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          ),
          color: Color(0xffFFBC21),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 60, vertical: 18),
            child: Text(
              "START",
              style: TextStyle(
                  fontFamily: "Oswald SemiBold",
                  fontSize: 30,
                  color: Color(0XFF2D2C3A)),
            ),
          ),
        ),
      ),
    );
  }
}

class WorkoutMovesPeekListItem extends StatelessWidget {
  const WorkoutMovesPeekListItem({
    Key? key,
    required this.workoutMove,
  }) : super(key: key);

  final WorkoutMove workoutMove;

  @override
  Widget build(BuildContext context) {
    var normalMove = Text(
      workoutMove.title,
      style: const TextStyle(
          fontFamily: "Oswald Light", fontSize: 20, color: Color(0XFFCFCFCF)),
    );

    if (workoutMove is SuperSet) {
      var superSet = workoutMove as SuperSet;
      List<Widget> superMoves = [
        Row(
          children: [
            const Icon(
              Icons.bolt,
              size: 36,
              color: Color(0xffFFBC21),
            ),
            Text(
              "${workoutMove.title} {",
              style: const TextStyle(
                  fontFamily: "Oswald Light",
                  fontSize: 20,
                  color: Color(0XFFCFCFCF)),
            )
          ],
        )
      ];
      for (var move in superSet.moves) {
        superMoves.add(Text(
          move.title,
          style: const TextStyle(
              fontFamily: "Oswald Light",
              fontSize: 20,
              color: Color(0XFFCFCFCF)),
        ));
      }
      superMoves.add(const Text(
        "}",
        style: TextStyle(
            fontFamily: "Oswald Light", fontSize: 20, color: Color(0XFFCFCFCF)),
      ));
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: superMoves,
      );
    } else {
      return normalMove;
    }
  }
}
