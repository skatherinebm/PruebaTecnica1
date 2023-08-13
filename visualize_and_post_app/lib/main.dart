import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:visualize_and_post_app/config/theme/app_theme.dart';
import 'package:visualize_and_post_app/presentation/providers/data_provider.dart';
import 'package:visualize_and_post_app/presentation/screen/api_Information_Screen.dart';
import 'package:visualize_and_post_app/presentation/screen/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [ChangeNotifierProvider(create: (_) => DataProvider())],
        child: MaterialApp(
          title: 'Json Placeholder Api',
          debugShowCheckedModeBanner: false,
          theme: AppTheme(selectedColor: 0).theme(),
          home: const ApiInformationScreen(),
          //  home: const HomeScreen(),
        ));
  }
}
