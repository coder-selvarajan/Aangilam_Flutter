import 'package:aangilam/constants.dart';
import 'package:aangilam/screens/dictionary/dictionary-view.dart';
import 'package:aangilam/screens/home/home-view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const AangilamApp());
}

class AangilamApp extends StatelessWidget {
  const AangilamApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aangilam App',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.black,
      ),
      // home: const HomeView(),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeView(),
        '/dictionary': (context) => const DictionaryView(),
      },
    );
  }
}
