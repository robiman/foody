import 'package:flutter/material.dart';
import 'package:foody/features/boarding/views/boarding_page.dart';
import 'package:foody/utils/theme/app_theme.dart';
import 'package:get/get.dart';
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context){
    return  GetMaterialApp(
      theme:AppTheme.appTheme,
      home: const Scaffold(
       body: BoardingPage(),
      ),
    );
  }
}
