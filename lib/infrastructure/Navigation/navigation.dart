import 'package:get/get.dart';
import 'package:morpher_main/Infrastructure/Navigation/Controllers/Exercise.Controller.Binding.dart';
import 'package:morpher_main/Infrastructure/Navigation/Controllers/Home.Controller.Binding.dart';
import 'package:morpher_main/Infrastructure/Navigation/Controllers/Start.Controller.Binding.dart';
import 'package:morpher_main/Infrastructure/Navigation/routes.dart';
import 'package:morpher_main/Presentation/Exercise/Exercise.Screen.dart';
import 'package:morpher_main/Presentation/Home/Home.Screen.dart';
import 'package:morpher_main/Presentation/Intro/intro.screen.dart';
import 'package:morpher_main/Presentation/Start/Start.Screen.dart';

class Nav {
  Nav._();

  static List<GetPage> routes = [
    GetPage(
        name: Routes.MORPHER_HOME,
        page: () => const HomeScreen(),
        binding: HomeBinding(),
        title: 'Home'),
    GetPage(
        name: Routes.MORPHER_START,
        page: () => const StartScreen(),
        binding: StartBinding(),
        title: 'Home'),
    GetPage(
        name: Routes.MORPHER_EXERCISE,
        page: () => const ExerciseScreen(),
        binding: ExerciseBinding(),
        title: 'Exercise'),
    GetPage(
        name: Routes.MORPHER_INTRO,
        page: () => const IntroScreen(),
        title: 'Intro'),
  ];
}
