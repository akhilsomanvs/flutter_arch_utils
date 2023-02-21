import 'package:flutter/material.dart';
import 'package:flutter_arch_utils/flutter_arch_utils.dart';
import 'package:sample_project/sample_screen.dart';

Future<void> _ensureScreenSize(window) async {
  return window.viewConfiguration.geometry.isEmpty ? Future.delayed(const Duration(milliseconds: 10), () => _ensureScreenSize(window)) : Future.value();
}

void main() async {
  final window = WidgetsFlutterBinding.ensureInitialized().window;
  await _ensureScreenSize(window);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return SizeConfigParentWidget(
      designSize: const Size(390, 844),
      builder: (context, constraints, orientation) => MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
        ),
        home: const SampleScreen(),
      ),
    );
  }
}