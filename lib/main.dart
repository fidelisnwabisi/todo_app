import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_app/core/res/colours.dart';
import 'package:todo_app/features/on_boarding/views/on_boarding_screen.dart';
import 'package:todo_app/firebase_options.dart';

Future<void> main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize:
          const Size(360.6, 721.1), // My debug device screen dimenssions
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          title: 'Todo App',
          debugShowMaterialGrid: false,
          theme: ThemeData(
            colorScheme:
                ColorScheme.fromSeed(seedColor: Colors.lightBlueAccent),
            scaffoldBackgroundColor: Colours.darkBackground,
            useMaterial3: true,
          ),
          home: const OnBoardingScreen(),
        );
      },
    );
  }
}
