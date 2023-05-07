import 'package:flutter/material.dart';
import 'package:intro_screen/firstPage.dart';
import 'package:intro_screen/homePager.dart';
import 'package:intro_screen/secondPage.dart';
import 'package:intro_screen/thirdPage.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool? firstVisited = prefs.getBool('first') ?? false;
  bool? secondVisited = prefs.getBool('second') ?? false;
  bool? thirdVisited = prefs.getBool('third') ?? false;
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/': (context) => const MyApp(),
      'first': (context) => const firstPage(),
      'second': (context) => const secoundPage(),
      'third': (context) => const thirdPage(),
      'homepage': (context) => const homePage(),
    },
    initialRoute: (firstVisited == false)
        ? 'first'
        : (secondVisited == false)
        ? 'second'
        : (thirdVisited == false)
        ? 'third'
        : 'homepage',
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        onPageChanged: (val) {
          setState(() {});
        },
        controller: Global.pageController,
        children: Global.pages,
      ),
    );
  }
}

class Global {
  static TextStyle title = const TextStyle(
    fontSize: 22,
    color: Colors.black,
    fontWeight: FontWeight.w900,
  );
  static TextStyle subTitle = const TextStyle(
    fontSize: 20,
    color: Colors.black,
    inherit: true,
  );
  static TextStyle bottomText =
  TextStyle(fontSize: 20, color: Colors.white);
  static int i = 0;
  static PageController pageController = PageController();
  static List<Widget> pages = [const firstPage(), const secoundPage(), const thirdPage()];
}