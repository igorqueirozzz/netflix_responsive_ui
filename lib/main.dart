import 'package:flutter/material.dart';
import 'package:netflix_responsive_ui/screens/screens.dart';
import 'package:netflix_responsive_ui/widgets/widgets.dart';
import 'package:netflix_responsive_ui/di/service_locator.dart';
void main() {
  runApp(const Center(child: CircularProgressIndicator(),));
  WidgetsFlutterBinding.ensureInitialized();
  initServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Netflix UI',
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const NavScreen(),
    );
  }
}
