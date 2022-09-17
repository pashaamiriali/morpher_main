import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:morpher_main/Core/UseCases/first_app_start_usecase.dart';
import 'package:morpher_main/Infrastructure/Helper/screen_size_helper.dart';
import 'package:morpher_main/Infrastructure/Navigation/navigation.dart';
import 'injection_container.dart' as injection;

import 'Infrastructure/Navigation/routes.dart';

void main() async {
  await injection.init();
  bool isFirstStart = true; //await findIfFirstStart();

  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MyApp(
        isFirstStart: isFirstStart,
      ), // Wrap your app
    ),
  );
}

Future<bool> findIfFirstStart() async {
  bool isFirstStart = true;
  var unfolded =
      await FirstAppStartUseCase(morpherRepo: injection.sl()).handle(Null);
  unfolded.fold(
    (left) => {isFirstStart = true},
    (right) => isFirstStart = right,
  );
  return isFirstStart;
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key, required this.isFirstStart}) : super(key: key);
  final bool isFirstStart;

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: (context, child) {
        ScreenSize.size = MediaQuery.of(context).size;
        return DevicePreview.appBuilder(context, child);
      },
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      initialRoute: isFirstStart ? Routes.MORPHER_INTRO : Routes.initialRoute,
      getPages: Nav.routes,
    );
  }
}
