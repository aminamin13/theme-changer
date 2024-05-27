import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theme_change/pages/home_page.dart';
import 'package:theme_change/theme/theme.dart';
import 'package:theme_change/theme/theme_provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => ThemeProvider(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      theme: Provider.of<ThemeProvider>(context).themeData ,
    );
  }
}
