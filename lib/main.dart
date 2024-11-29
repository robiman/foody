import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:foody/utils/theme/app_theme.dart';
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}


class MyApp extends StatelessWidget{
  const MyApp();
  @override
  Widget build(BuildContext context){
    return  MaterialApp(
      theme:AppTheme.appTheme,
      home: const Scaffold(
       body: Center(child: Text("This is Foody App for your restraunt"),),
      ),
    );
  }
}
