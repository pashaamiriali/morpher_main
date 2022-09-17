import 'package:flutter/material.dart';
import 'package:morpher_main/Presentation/SharedWidgets/Widgets.Shared.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

enum WorkoutSelectionMode { none, customMode, defaultMode }

class _IntroScreenState extends State<IntroScreen> {
  bool _choosing = false;
  var _chosenMode = WorkoutSelectionMode.none;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff2D2C3A),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _choosing ? _buildSelectMode() : _buildIntroMode(),
              PrimaryButton(
                onPressed: () {
                  if (_choosing) {
                  } else {
                    setState(() {
                      _choosing = true;
                      _chosenMode = WorkoutSelectionMode.defaultMode;
                    });
                  }
                },
                text: "NEXT",
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildIntroMode() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const MediumText(
          text: 'Morpher',
          fontSize: 60,
          textAlign: TextAlign.center,
        ),
        const Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: MediumText(
            text: 'This is just the first step!',
            fontSize: 30,
            textAlign: TextAlign.center,
          ),
        ),
        Image.asset(
          'assets/images/bodybuilder_figure.png',
          width: 200,
          height: 200,
        ),
      ],
    );
  }

  Widget _buildSelectMode() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const MediumText(
          text: 'Choose',
          fontSize: 60,
          textAlign: TextAlign.center,
        ),
        const Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: MediumText(
            text: 'Your workout moves and timing schedule',
            fontSize: 30,
            textAlign: TextAlign.center,
          ),
        ),
        PrimaryButton(
          onPressed: () {
            setState(() {
              _chosenMode = WorkoutSelectionMode.customMode;
            });
          },
          text: 'Custom',
          filled: _chosenMode == WorkoutSelectionMode.customMode,
        ),
        PrimaryButton(
          onPressed: () {
            setState(() {
              _chosenMode = WorkoutSelectionMode.defaultMode;
            });
          },
          text: 'Default',
          filled: _chosenMode == WorkoutSelectionMode.defaultMode,
        ),
      ],
    );
  }
}
