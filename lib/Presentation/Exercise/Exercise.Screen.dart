import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:morpher_main/Infrastructure/Navigation/routes.dart';
import 'package:morpher_main/Presentation/Exercise/Controllers/Exercise.Controller.dart';
import 'package:morpher_main/Presentation/SharedWidgets/Widgets.Shared.dart';

class ExerciseScreen extends GetView<ExerciseController> {
  const ExerciseScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ExerciseController>(
      init: ExerciseController(),
      builder: (_) {
        print(controller.isResting.value);
        return Scaffold(
          backgroundColor: const Color(0XFF2D2C3A),
          body: SafeArea(
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                   const SizedBox(
                      height: 130,
                    ),
                    Expanded(
                      child: Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SemiBoldText(
                              text: "Dumbbell Upper Chest",
                              textAlign: TextAlign.center,
                            ),
                            SemiBoldText(text: "1st Set 12 Reps"),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 50.0),
                        child: OctagonTimer(isResting:controller.isResting.value),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Align(alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom:30.0),
                          child: SemiBoldText(
                            text: "Next Up: 2nd Set",
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 130,
                    ),
                  ],
                ),
                const CustomAppBar(),
                _buildPauseButton(),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 40),
                    child: _buildDoneButton(),
                  ),
                )
              ],
            ),
          ),
        );
      }
    );
  }

  Widget _buildPauseButton() {
    return SecondaryBottomButton(
        onPressed: () {
          //TODO: this should tell the start page where to start from
          Get.toNamed(Routes.MORPHER_START,
              arguments: {"paused": true, "currentMove": "someMove"});
        },
        text: "Pause");
  }

  Widget _buildDoneButton() {
    return PrimaryButton(onPressed: () {
      controller.setIsResting(!controller.isResting.value);
    }, text: controller.isResting.value?"SKIP":"DONE");
  }
}

class OctagonTimer extends StatelessWidget {
  const OctagonTimer({
    Key? key, required this.isResting,
  }) : super(key: key);
  final bool isResting;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: LayoutBuilder(builder: (context, constraints) {
        return Material(elevation: 5,
          shape: BeveledRectangleBorder(
              borderRadius: BorderRadius.circular(
                  constraints.maxWidth * 0.3),side: const BorderSide(color: Color(0xffCFCFCF), width: 5),),
          color: isResting?const Color(0xff4C4B61):const Color(0xFFFFBC21),
          child: Center(
            child: SemiBoldText(text:"02:08",fontSize: 60,color: isResting?Color(0xFFFFBC21):Color(0xFF4C4B61),hasShadow: true),
          ),
        );
      }),
    );
  }
}
