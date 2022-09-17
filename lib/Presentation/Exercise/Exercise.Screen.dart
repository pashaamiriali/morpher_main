import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:morpher_main/Infrastructure/Helper/screen_size_helper.dart';
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
          return SafeArea(
            child: Scaffold(
              appBar: CustomAppBar.asPreferredSize,
              backgroundColor: const Color(0XFF2D2C3A),
              bottomNavigationBar: ColoredBox(
                color: const Color(0XFF2D2C3A),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    _buildDoneButton(),
                    _buildPauseButton(),
                  ],
                ),
              ),
              body: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: rTDH(20),
                  ),
                  const SemiBoldText(
                    text: "Dumbbell Upper Chest",
                    textAlign: TextAlign.center,
                  ),
                  const SemiBoldText(text: "1st Set 12 Reps"),
                  SizedBox(
                    height: rTDH(30),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: OctagonTimer(isResting: controller.isResting.value),
                  ),
                  Expanded(
                    flex: 1,
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: EdgeInsets.only(bottom: rTDH(30.0)),
                        child: SemiBoldText(
                          text: "Next Up: 2nd Set",
                          fontSize: rTDH(20),
                        ),
                      ),
                    ),
                  ),

                ],
              ),
            ),
          );
        });
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
    return Padding(
      padding:  EdgeInsets.all(rTDW(10) ),
      child: PrimaryButton(
          onPressed: () {
            controller.setIsResting(!controller.isResting.value);
          },
          text: controller.isResting.value ? "SKIP" : "DONE"),
    );
  }
}

class OctagonTimer extends StatelessWidget {
  const OctagonTimer({
    Key? key,
    required this.isResting,
  }) : super(key: key);
  final bool isResting;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: rTDW(266),
      height: rTDW(266),
      child: Material(
        elevation: 5,
        shape: BeveledRectangleBorder(
          borderRadius: BorderRadius.circular(rTDW(70)),
          side: const BorderSide(color: Color(0xffCFCFCF), width: 5),
        ),
        clipBehavior: Clip.hardEdge,
        child: AnimatedContainer(
          color: isResting ? const Color(0xff4C4B61) : const Color(0xFFFFBC21),
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOutSine,
          child: Center(
            child: SemiBoldText(
                text: "02:08",
                fontSize: 60,
                color: isResting
                    ? const Color(0xFFFFBC21)
                    : const Color(0xFF4C4B61),
                hasShadow: true),
          ),
        ),
      ),
    );
  }
}
